import { useEffect, useState } from "react"
import { Button, Card, CardGroup, Col, Container, Row } from "react-bootstrap";
import { useSearchParams } from "react-router-dom";
import Apis, { endpoints } from "../configs/Apis";
import MySpinner from "../layout/MySpinner";

const Home = () => {
    const [jobs, setJobs] = useState(null);
    const [companies, setCompanies] = useState(null);
    const [q] = useSearchParams();

    useEffect(() => {
        const loadJobs = async () => {
            try {
                let e = endpoints['jobs'];

                let locationId = q.get("locationId");
                if (locationId != null) {
                    e = `${e}?locationId=${locationId}`;
                }


                let res = await Apis.get(e);
                setJobs(res.data);
            } catch (ex) {
                console.error(ex);
            }
        }

        const loadCompanies = async () => {
            try {
                let e = endpoints['companies'];

                let res = await Apis.get(e);
                setCompanies(res.data);
            } catch (ex) {
                console.error(ex);
            }
        }

        loadJobs();
        loadCompanies();
    }, [q]);


    if (jobs === null)
        return <MySpinner />


    return (
        // Công việc
        <>
            <h1 className="text-center mt-3 mb-3" style={{ color: '#4338ca' }}>DANH MỤC CÔNG VIỆC</h1>

            <div class="grid gap-4 grid-cols-3 grid-rows-3">
                <Container>
                    <Row>

                        {jobs.map(j => {
                            return <Col className=" mt-3">
                                <Card style={{ width: '19rem', height: '30rem' }}>
                                    <Card.Img variant="top" src={j.image} />
                                    <Card.Body>
                                        <Card.Title>{j.title}</Card.Title>
                                        <Card.Text>
                                            <p>{j.description}</p>
                                            <p>{j.address}</p>
                                            <p>{j.jobNature}</p>
                                        </Card.Text>
                                    </Card.Body>
                                    <Button variant="primary" style={{ marginBottom: '3%' }}>Xem chi tiết</Button>
                                </Card>
                            </Col>
                        })}
                    </Row>
                </Container>
            </div>

            {/* Danh sách công ty */}
            <h1 className="text-center mt-3 mb-3" style={{ color: '#4338ca' }}>DANH MỤC CÔNG TY</h1>

            <div class="grid gap-4 grid-cols-3 grid-rows-3">
                <Container>
                    <Row>

                        {companies.map(c => {
                            return <Col className=" mt-3">
                                <Card style={{ width: '19rem', height: '30rem' }}>
                                    <Card.Img variant="top" src={c.image} />
                                    <Card.Body>
                                        <Card.Title>{c.nanme}</Card.Title>
                                        <Card.Text>
                                            <p>{c.dateOfIncorporation}</p>
                                            <p>{c.description}</p>
                                            <p>{c.address}</p> 
                                            <p>{c.scale}</p>
                                        </Card.Text>
                                    </Card.Body>
                                    <Button variant="primary" style={{ marginBottom: '3%' }}>Xem chi tiết</Button>
                                </Card>
                            </Col>
                        })}
                    </Row>
                </Container>
            </div>
        </>
    );
}

export default Home;