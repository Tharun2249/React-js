import React, { useState } from 'react';
import { 
  Button, 
  Container, 
  Form, 
  Row, 
  Col, 
  Navbar, 
  Toast, 
  Image 
} from 'react-bootstrap';

const Register = () => {
  const [firstName, setFirstName] = useState('');
  const [lastName, setLastName] = useState('');
  const [userName, setUserName] = useState('');
  const [password, setPassword] = useState('');
  const [department, setDepartment] = useState('');
  const [gender, setGender] = useState('');
  const [showToast, setShowToast] = useState(false);
  const [toastMessage, setToastMessage] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();

    // Validate all fields
    if (!firstName) {
      setToastMessage('First Name is required!');
      setShowToast(true);
      return;
    }
    if (!lastName) {
      setToastMessage('Last Name is required!');
      setShowToast(true);
      return;
    }
    if (!userName) {
      setToastMessage('User Name is required!');
      setShowToast(true);
      return;
    }
    if (!password) {
      setToastMessage('Password is required!');
      setShowToast(true);
      return;
    }
    if (!department) {
      setToastMessage('Department is required!');
      setShowToast(true);
      return;
    }
    if (!gender) {
      setToastMessage('Gender is required!');
      setShowToast(true);
      return;
    }

    console.log('Form Submitted:', { firstName, lastName, userName, password, department, gender });
  };

  return (
    <Container fluid className="bg-light">
      <Navbar className="bg-warning p-2 fixed-top mb-3">
        <Col md={2}>
          <Image src='sunlifelogo.png' alt='sunlife' width={150} />
        </Col>
      </Navbar>
      
      <div className="pt-4">
        <h1 className='my-5 text-center p-3'>Registration Form</h1>
        <Row className='justify-content-center'>
          <Col md={6} className="p-4 bg-white rounded shadow">
            <Form onSubmit={handleSubmit}>
              <Row className='mb-3'>
                <Form.Group as={Col} controlId="firstName">
                  <Form.Label>First Name *</Form.Label>
                  <Form.Control 
                    type='text' 
                    placeholder='John' 
                    value={firstName} 
                    onChange={(e) => setFirstName(e.target.value)}
                  />
                </Form.Group>
                <Form.Group as={Col} controlId="lastName">
                  <Form.Label>Last Name *</Form.Label>
                  <Form.Control 
                    type='text' 
                    placeholder='Doe' 
                    value={lastName} 
                    onChange={(e) => setLastName(e.target.value)}
                  />
                </Form.Group>
              </Row>
              <Row className='mb-3'>
                <Form.Group as={Col} controlId="userName">
                  <Form.Label>User Name *</Form.Label>
                  <Form.Control 
                    type='text' 
                    placeholder='johndoe' 
                    value={userName} 
                    onChange={(e) => setUserName(e.target.value)}
                  />
                </Form.Group>
                <Form.Group as={Col} controlId="password">
                  <Form.Label>Password *</Form.Label>
                  <Form.Control 
                    type='password' 
                    placeholder='********' 
                    value={password} 
                    onChange={(e) => setPassword(e.target.value)}
                  />
                </Form.Group>
              </Row>
              <Row className='mb-3'>
                <Form.Group as={Col} controlId="department">
                  <Form.Label>Select Department *</Form.Label>
                                    <Form.Select value={department} onChange={(e) => setDepartment(e.target.value)}>
                    <option value="">Select department</option>
                    <option value="Technology">Technology</option>
                    <option value="Engineering">Engineering</option>
                    <option value="Operations">Operations</option>
                  </Form.Select>
                </Form.Group>
                <Form.Group as={Col} controlId="gender">
                  <Form.Label>Gender *</Form.Label>
                  <br />
                  <Form.Check
                    className='my-1'
                    inline
                    type="radio"
                    label="Male"
                    name="gender"
                    value="Male"
                    onChange={() => setGender('Male')}
                  />
                  <Form.Check
                    className='my-1'
                    inline
                    type="radio"
                    label="Female"
                    name="gender"
                    value="Female"
                    onChange={() => setGender('Female')}
                  />
                </Form.Group>
              </Row>
              <Button variant="primary" type="submit">
                Submit
              </Button>
            </Form>
          </Col>
        </Row>
      </div>

      {/* Bootstrap Toast for validation errors */}
      <Toast
        onClose={() => setShowToast(false)}
        show={showToast}
        delay={3000}
        autohide
        style={{ position: 'absolute', top: 20, right: 20 }}
      >
        <Toast.Header>
          <strong className="me-auto">Validation Error</strong>
        </Toast.Header>
        <Toast.Body>{toastMessage}</Toast.Body>
      </Toast>

      {/* Footer */}
      <Row className='bg-success p-2 text-white fixed-bottom'>
        <Col md={2}>
          <Image src='sunlifelogo.png' alt='sunlife' width={150} />
        </Col>
        <Col md={10} className="text-end">
          <Row>
            <Col className="text-end">
              <p>Legal&nbsp;&nbsp;|&nbsp;&nbsp;Privacy&nbsp;&nbsp;|&nbsp;&nbsp;Security&nbsp;&nbsp;|&nbsp;&nbsp;Sitemap&nbsp;&nbsp;|&nbsp;&nbsp;Feedback</p>
            </Col>
          </Row>
          <Row>
            <Col className="text-end">
              <p>Sun Life Assurance Company of Canada. All rights are reserved</p>
            </Col>
          </Row>
        </Col>
      </Row>
    </Container>
  );
}

export default Register;
