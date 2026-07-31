cd dao-voting-portal

# 1. Contracts
cd contracts && npm install
npx hardhat compile
npx hardhat node                    # terminal 1
npx hardhat run scripts/deploy.ts --network localhost   # terminal 2
# copy the 3 addresses into frontend/.env and backend/.env

# 2. Backend
cd ../backend && npm install
cp .env.example .env                # fill Firebase + contract addresses
npm run start:dev

# 3. Frontend
cd ../frontend && npm install
cp .env.example .env
npm run dev