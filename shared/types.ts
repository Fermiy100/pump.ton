// Shared types for Pump Ton application

export interface User {
  id: string;
  address: string;
  username?: string;
  avatar?: string;
  bio?: string;
  createdAt: string;
  updatedAt: string;
}

export interface Token {
  id: string;
  address: string;
  name: string;
  symbol: string;
  description?: string;
  image?: string;
  decimals: number;
  totalSupply: string;
  price: number;
  marketCap: number;
  volume24h: number;
  change24h: number;
  isActive: boolean;
  createdAt: string;
  updatedAt: string;
  creator: User;
}

export interface Trade {
  id: string;
  tokenId: string;
  userId: string;
  type: 'BUY' | 'SELL';
  amount: string;
  price: number;
  total: number;
  createdAt: string;
  token: Token;
  user: User;
}

export interface Stream {
  id: string;
  title: string;
  description?: string;
  thumbnail?: string;
  streamKey: string;
  isLive: boolean;
  viewers: number;
  createdAt: string;
  updatedAt: string;
  creator: User;
  token?: Token;
}

export interface Donation {
  id: string;
  amount: string;
  message?: string;
  createdAt: string;
  stream: Stream;
  user: User;
}

export interface ApiResponse<T> {
  success: boolean;
  data?: T;
  error?: string;
  message?: string;
}

export interface PaginatedResponse<T> {
  data: T[];
  total: number;
  page: number;
  limit: number;
  totalPages: number;
}
