## EYECARE: A Mobile and Web Application for Optical Care Using Descriptive Analyics

The primary goal of the application is to provide a comprehensive platform that bridges the gap between patients and healthcare providers, ensuring convenient access to essential eye care services. This project is developed using MERN Stack Components (MongoDB, Express, React, and Node.js).

![Screenshot 2024-09-10 043052](https://github.com/user-attachments/assets/109134ce-e517-4037-a564-f65e8e7c0d94)
![Screenshot 2024-10-15 032539](https://github.com/user-attachments/assets/a766c9a2-7809-4ad6-b905-37fd7ef538ec)

# **Features**

### **User:**
- **Virtual Try-On:**
  - This is one of the features of the system where the customer can have a virtual try-on of the available eye wear at the optical clinic.

- **Online Consultation Booking:**
  - In the consultation booking, patient can book appointment consultation with the optometrist by filling in the required fields for personal details and choosing date and time slot.

# **Project Setup**

### Prerequisites
- Flutter ( version v3.100.0 or later )
- MongoDB Atlas account

### Clone the project

```bash
  git clone https://github.com/karyllrivs/Eye-Care-Mobile.git
```

### Navigate to the project directory

```bash
  cd eye-care-mobile
```

### Install dependencies for frontend and backend separately
**Tip:** To efficiently install dependencies for both frontend and backend simultaneously, use split terminals.

Install frontend and backend dependencies in a separate terminal
```bash
npm install
```

### Environment Variables
**Backend**
- Create a `.env` file in the `backend` directory.
- Add the following variables with appropriate values
```bash
# Database connection string
MONGO_URI="mongodb://localhost:27017/your-database-name"
MONGODB_NAME="your_database_name"

# Email credentials for sending password resets and OTPs
NODEMAILER_EMAIL="your-email@example.com"
NODEMAILER_PASSWORD="your_email_password"

# Token and cookie expiration settings
AUTH_COOKIE_NAME="your_cookie_name"

# Secret key for jwt security
SECRET_KEY="your-secret-key"

# Set up Payment Gateway
PAYMONGO_PK="your_public_key"
PAYMONGO_SK="your_secret_key"

**Important**
- Replace all placeholders (e.g., your_database_name, your_email) with your actual values.
- Exclude the `.env` file from version control to protect sensitive information.

**Important:**

- **Separate terminals**: Run the commands in separate terminal windows or use `split terminal` to avoid conflicts.
- **Nodemon required**: Ensure you have `nodemon` installed globally to run the backend development servers using `npm run dev`. You can install it globally using `npm install -g nodemon`.

#### Start the backend server
- Open a new terminal window.
- Start the server: `npm start'
- You should see a message indicating the server is running and is connected to MongoDB.
     
#### Start the applcation:
- Create an emulator in Android Studio.
- Open the created emulator to your IDE from Android Studio.
- Run the application.

