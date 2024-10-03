function Register() {
  const [department, setDepartment] = useState('');
  const [gender, setGender] = useState('');
  const [validated, setValidated] = useState(false);

  const handleSubmit = (event) => {
    event.preventDefault();
    const form = event.currentTarget;
    if (form.checkValidity() === false || department === '' || gender === '') {
      event.stopPropagation();
      if (department === '') {
        toast.error('Department is required');
      }
      if (gender === '') {
        toast.error('Gender is required');
      }
    } else {
      // Submit the form if validation passes
      toast.success('Form submitted successfully!');
    }

    setValidated(true);
  };

  return (
    <Container>
      <div>
        <Row>
          <Col>
            <Form noValidate validated={validated} onSubmit={handleSubmit}>
              <Row>
                <Form.Group as={Col}>
                  <Form.Label>Department</Form.Label>
                  <Form.Select 
                    required 
                    value={department} 
                    onChange={(e) => setDepartment(e.target.value)}
                  >
                    <option value="">Select department</option>
                    <option value="Technology">Technology</option>
                    <option value="Engineering">Engineering</option>
                    <option value="Operations">Operations</option>
                  </Form.Select>
                  <Form.Control.Feedback type="invalid">
                    Please select a department.
                  </Form.Control.Feedback>
                </Form.Group>

                <Form.Group as={Col}>
                  <Form.Label>Gender</Form.Label>
                  <br />
                  <Form.Check 
                    required 
                    className='my-1' 
                    inline 
                    type="radio" 
                    label="Male" 
                    value="Male"
                    onChange={() => setGender('Male')}
                    checked={gender === 'Male'}
                  />
                  <Form.Check 
                    required 
                    className='my-1' 
                    inline 
                    type="radio" 
                    label="Female" 
                    value="Female"
                    onChange={() => setGender('Female')}
                    checked={gender === 'Female'}
                  />
                  <Form.Control.Feedback type="invalid">
                    Please select a gender.
                  </Form.Control.Feedback>
                </Form.Group>
              </Row>
              <Button variant="primary" type="submit">
                Submit
              </Button>
            </Form>
          </Col>
        </Row>
      </div>

      {/* Footer */}
      <Row className='bg-success p-2 text-white fixed-bottom'>
        <Col md={2}>
          <img src='sunlifelogo.png' alt='sunlife' width={150} />
        </Col>
        <Col md={10} className="text-end">
          <Row>
            <Col className="text-end">
              <p>Legal&nbsp;&nbsp;|&nbsp;&nbsp;Privacy&nbsp;&nbsp;|&nbsp;&nbsp;Security&nbsp;&nbsp;|&nbsp;&nbsp;Sitemap&nbsp;&nbsp;|&nbsp;&nbsp;Feedback</p>
            </Col>
          </Row>
          <Row>
            <Col className="text-end">
              <p>Sun Life Assurance Company of Canada. All rights reserved</p>
            </Col>
          </Row>
        </Col>
      </Row>

      {/* Toast Container */}
      <ToastContainer position="top-right" autoClose={3000} hideProgressBar />
    </Container>
  );
}

export default Register;
