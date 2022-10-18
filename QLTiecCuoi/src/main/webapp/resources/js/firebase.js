
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.10.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.10.0/firebase-analytics.js";
  import { getDatabase, ref, child, get } from "firebase/database";
  import {database} from "./firebase"
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyBNGPEPkA3eGjyMXW6Xjod0w4sKpgunpus",
    authDomain: "qlnhahangtieccuoi.firebaseapp.com",
    projectId: "qlnhahangtieccuoi",
    storageBucket: "qlnhahangtieccuoi.appspot.com",
    messagingSenderId: "362767797864",
    appId: "1:362767797864:web:b9a9dcc244c4f7e91875dd",
    measurementId: "G-GTST1VYZ7G"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
  const database = getDatabase(app);
  
  const dbRef = ref(database);
get(child(dbRef, `users`)).then((snapshot) => {
  if (snapshot.exists()) {
    console.log(snapshot.val());
  } else {
    console.log("No data available");
  }
}).catch((error) => {
  console.error(error);
});