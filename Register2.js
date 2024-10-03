import React, { useState } from 'react';
import { Form, Button, Col, Row, Toast, Container } from 'react-bootstrap';

function Register() {
  // State for form fields
  const [department, setDepartment] = useState('');
  const [gender, setGender] = useState('');
  const [showToast, setShowToast] = useState(false);
  const [toastMessage, setToastMessage] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    
    // Validate form fields
    if (department === '') {
      setToastMessage('Department is required!');
      setShowToast(true);
      return;
    }
    if (gender === '') {
      setToastMessage('Gender is required!');
      setShowToast(true);
      return;
    }

    // If valid, submit form (add your form submission logic here)
    console.log('Form submitted');
  };

  return (
    <Container>
      <div>
        <Row>
          <Col>
            <Form onSubmit={handleSubmit}>
              <Form.Group as={Col}>
                <Form.Label>Select Department</Form.Label>
                <Form.Select value={department} onChange={(e) => setDepartment(e.target.value)}>
                  <option value="">Select department</option>
                  <option value="Technology">Technology</option>
                  <option value="Engineering">Engineering</option>
                  <option value="Operations">Operations</option>
                </Form.Select>
              </Form.Group>

              <Form.Group as={Col}>
                <Form.Label>Gender</Form.Label>
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

              <Button variant="primary" type="submit">
                Submit
              </Button>
            </Form>
          </Col>
        </Row>

        {/* Bootstrap Toast */}
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
      </div>

      {/* Footer */}
      <Row className='bg-success p-2 text-white fixed-bottom '>
        <Col md={2}>
          <img src='sunlifelogo.png' alt='sunlife' width={150} />
        </Col>
        <Col md={10} className="text-end">
          <Row>
            <Col className="text-end">
              <p>Legal&nbsp;&nbsp;|&nbsp;&nbsp;Privacy &nbsp;&nbsp;|&nbsp;&nbsp;Security&nbsp;&nbsp;|&nbsp;&nbsp;Sitemap&nbsp;&nbsp;|&nbsp;&nbsp;Feedback</p>
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
                                                           
