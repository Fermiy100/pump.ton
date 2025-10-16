import React from 'react';

const Profile: React.FC = () => {
  return (
    <div className="container mx-auto px-4">
      <h1 className="text-3xl font-bold mb-6">User Profile</h1>
      <div className="bg-white p-6 rounded-lg shadow-md">
        <h3 className="text-xl font-semibold mb-4">Profile Information</h3>
        <div className="space-y-4">
          <div>
            <label className="block text-sm font-medium text-gray-700">Wallet Address</label>
            <p className="mt-1 text-sm text-gray-900">TON wallet address will be displayed here</p>
          </div>
          <div>
            <label className="block text-sm font-medium text-gray-700">Balance</label>
            <p className="mt-1 text-sm text-gray-900">TON balance will be displayed here</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Profile;
