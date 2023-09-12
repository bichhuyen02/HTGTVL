import axios from "axios";
import cookie from "react-cookies";

const SERVER_CONTEXT = "/mavenproject1";
const SERVER = "http://localhost:8080";

export const endpoints = {
    "categories": `${SERVER_CONTEXT}/api/cate/`,
    "jobs": `${SERVER_CONTEXT}/api/jobs/`,
    "companies": `${SERVER_CONTEXT}/api/companies/`,
    "locations": `${SERVER_CONTEXT}/api/location/`,
    "login": `${SERVER_CONTEXT}/api/login/`,
    "current-user": `${SERVER_CONTEXT}/api/current-user/`,
    "register": `${SERVER_CONTEXT}/api/users/`,
    // "pay": `${SERVER_CONTEXT}/api/pay/`,
    // "details": (productId) => `${SERVER_CONTEXT}/api/products/${productId}/`,
    // "comments": (productId) => `${SERVER_CONTEXT}/api/products/${productId}/comments/`,
    // "add-comment": `${SERVER_CONTEXT}/api/comments/`,
}

export const authApi = () => {
    return axios.create({
        baseURL: SERVER,
        headers: {
            "Authorization": cookie.load("token")
        }
    })
}

export default axios.create({
    baseURL: SERVER
})