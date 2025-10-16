import React from 'react';

const Tokens: React.FC = () => {
  return (
    <div className="container mx-auto px-4">
      <h1 className="text-3xl font-bold mb-6">Token Marketplace</h1>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {/* Token cards will be rendered here */}
        <div className="bg-white p-6 rounded-lg shadow-md">
          <h3 className="text-xl font-semibold mb-2">Sample Token</h3>
          <p className="text-gray-600 mb-4">TON-based token example</p>
          <div className="flex justify-between items-center">
            <span className="text-green-600 font-bold">+5.2%</span>
            <button className="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
              Trade
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Tokens;
