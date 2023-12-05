import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Greetings from "./Greetings";

const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Greetings />} />
      </Routes>
    </Router>
  );
};

export default App;
