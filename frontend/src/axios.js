import axios from 'axios';

const railsApi = axios.create({
  baseURL: import.meta.env.VITE_API_ORIGIN
});

export default railsApi;
