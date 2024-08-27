import { Inter } from "next/font/google";

import 'bootstrap/dist/css/bootstrap.min.css';
import "./globals.css";

import 'primeicons/primeicons.css';
import "primereact/resources/themes/lara-dark-teal/theme.css"




const inter = Inter({ subsets: ["latin"] });

import BootstrapClient from "@/libs/BootstrapClient";
import Header from "@/components/Header";
import Footer from "@/components/Footer";


export const metadata = {
  title: "Gestion de Tareas",
  description: "Sistema para gestionar las tareas",
};

export default function RootLayout({ children }) {
  return (
    <html lang="es">
      <body className={`bg-dark text-white-50 ${inter.className}`}>
        <div className="contenedor">
        <Header/>
          {children}
        <Footer/>
        </div>
        <BootstrapClient/>
        </body>
    </html>
  );
}
