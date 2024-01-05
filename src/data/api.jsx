import axios from "axios";


class APIConnector {
  constructor() {
    this.baseUrl = 'http://localhost:1111'; // Replace with your API base URL
  }

  // Fetch all data
  getAllData = async () => {
    try {
      const response = await axios.get(`${this.baseUrl}/order/khata`);
      return response.data;
    } catch (error) {
      console.error('Error fetching data:', error);
      return [];
    }
  };

  // Fetch a single data item by ID
  getDataById = async (id) => {
    try {
      const response = await axios.get(`${this.baseUrl}/data/${id}`);
      return response.data;
    } catch (error) {
      console.error('Error fetching data by ID:', error);
      return null;
    }
  };

  // Create a new data item
  createData = async (formData) => {
    try {
      const response = await axios.post(`${this.baseUrl}/data`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });
      return response.data;
    } catch (error) {
      console.error('Error creating data:', error);
      return null;
    }
  };

  // Update an existing data item
  updateData = async (id, formData) => {
    try {
      const response = await axios.put(`${this.baseUrl}/data/${id}`, formData, {
        headers: {
          'Content-Type': 'multipart/form-data',
        },
      });
      return response.data;
    } catch (error) {
      console.error('Error updating data:', error);
      return null;
    }
  };

  // Delete a data item
  deleteData = async (id) => {
    try {
      await axios.delete(`${this.baseUrl}/data/${id}`);
      return true;
    } catch (error) {
      console.error('Error deleting data:', error);
      return false;
    }
  };
}

export default APIConnector;
