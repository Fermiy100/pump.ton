import React from 'react';

const Streams: React.FC = () => {
  return (
    <div className="container mx-auto px-4">
      <h1 className="text-3xl font-bold mb-6">Live Streams</h1>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div className="bg-white p-6 rounded-lg shadow-md">
          <h3 className="text-xl font-semibold mb-2">Sample Stream</h3>
          <p className="text-gray-600 mb-4">Live streaming with TON donations</p>
          <div className="flex justify-between items-center">
            <span className="text-blue-600">🔴 Live</span>
            <button className="bg-red-600 text-white px-4 py-2 rounded hover:bg-red-700">
              Watch
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Streams;
