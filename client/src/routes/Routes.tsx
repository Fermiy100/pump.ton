import React from 'react';
import { Routes, Route } from 'react-router-dom';
import Home from '../pages/Home';
import Tokens from '../pages/Tokens';
import Streams from '../pages/Streams';
import Profile from '../pages/Profile';

const AppRoutes: React.FC = () => {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/tokens" element={<Tokens />} />
      <Route path="/streams" element={<Streams />} />
      <Route path="/profile" element={<Profile />} />
    </Routes>
  );
};

export default AppRoutes;
