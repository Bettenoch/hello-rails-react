import { configureStore } from '@reduxjs/toolkit';
import greetingReducer from './greetingSlice';

export const store = configureStore({
  reducer: {
    greeting: greetingReducer,
    // Add other reducers if needed
  },
});