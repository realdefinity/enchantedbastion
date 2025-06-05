<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beatscape - Portland's Ultimate Music-Themed Adventure</title>
    <meta name="description" content="Experience the rhythm of excitement at Beatscape, Portland's premier music-themed amusement park">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;900&family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #ff3e82;
            --secondary: #2b0a3d;
            --accent: #00e1ff;
            --light: #f8f1ff;
            --dark: #1a0a26;
            --text: #e8e8e8;
            --text-dark: #333;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background: var(--dark);
            color: var(--text);
            overflow-x: hidden;
            position: relative;
        }
        
        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: radial-gradient(circle at 20% 30%, var(--primary) 0%, transparent 20%), 
                        radial-gradient(circle at 80% 70%, var(--accent) 0%, transparent 20%), 
                        linear-gradient(to bottom, var(--secondary), var(--dark));
            background-size: 200% 200%;
            z-index: -2;
            animation: gradientPulse 15s ease infinite;
        }
        
        @keyframes gradientPulse {
            0% { background-position: 0% 0%; }
            50% { background-position: 100% 100%; }
            100% { background-position: 0% 0%; }
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Header Styles */
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            padding: 20px 0;
            z-index: 1000;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
            background-color: rgba(43, 10, 61, 0.8);
            border-bottom: 1px solid rgba(255, 62, 130, 0.3);
        }
        
        header.scrolled {
            padding: 10px 0;
            background-color: rgba(26, 10, 38, 0.95);
        }
        
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            display: flex;
            align-items: center;
            gap: 15px;
            text-decoration: none;
            transition: transform 0.3s ease;
        }
        
        .logo:hover {
            transform: scale(1.05);
        }
        
        .logo-img {
            height: 50px;
            width: auto;
            transition: all 0.3s ease;
        }
        
        .logo-text {
            font-family: 'Montserrat', sans-serif;
            font-weight: 900;
            font-size: 1.8rem;
            background: linear-gradient(to right, var(--primary), var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        
        nav ul {
            display: flex;
            list-style: none;
            gap: 30px;
        }
        
        nav a {
            color: var(--text);
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
            position: relative;
            padding: 5px 0;
            transition: color 0.3s ease;
        }
        
        nav a:hover {
            color: var(--primary);
        }
        
        nav a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: linear-gradient(to right, var(--primary), var(--accent));
            transition: width 0.3s ease;
        }
        
        nav a:hover::after {
            width: 100%;
        }
        
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            color: var(--text);
            font-size: 1.5rem;
            cursor: pointer;
        }
        
        /* Hero Section */
        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            padding-top: 90px;
        }
        
        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 600px;
        }
        
        .hero h1 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 900;
            font-size: 4rem;
            line-height: 1.1;
            margin-bottom: 20px;
            background: linear-gradient(to right, var(--primary), var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            animation: fadeInUp 1s ease;
        }
        
        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            opacity: 0;
            animation: fadeInUp 1s ease 0.3s forwards;
        }
        
        .btn {
            display: inline-block;
            padding: 12px 30px;
            background: linear-gradient(to right, var(--primary), var(--accent));
            color: var(--light);
            border: none;
            border-radius: 30px;
            font-weight: 600;
            text-decoration: none;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(255, 62, 130, 0.4);
            opacity: 0;
            animation: fadeInUp 1s ease 0.6s forwards;
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(255, 62, 130, 0.6);
        }
        
        .btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.3);
            box-shadow: none;
        }
        
        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.2);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        
        .hero-image {
            position: absolute;
            right: 0;
            top: 50%;
            transform: translateY(-50%);
            width: 50%;
            max-width: 700px;
            opacity: 0;
            animation: fadeInRight 1s ease 0.9s forwards;
        }
        
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        @keyframes fadeInRight {
            from {
                opacity: 0;
                transform: translateY(-50%) translateX(50px);
            }
            to {
                opacity: 1;
                transform: translateY(-50%) translateX(0);
            }
        }
        
        /* Floating Elements */
        .floating-elements {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: 1;
        }
        
        .floating-element {
            position: absolute;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            backdrop-filter: blur(2px);
            animation: float 15s infinite linear;
        }
        
        @keyframes float {
            0% {
                transform: translateY(0) rotate(0deg);
            }
            50% {
                transform: translateY(-50px) rotate(180deg);
            }
            100% {
                transform: translateY(0) rotate(360deg);
            }
        }
        
        /* Sections Common Styles */
        section {
            padding: 100px 0;
            position: relative;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 60px;
            position: relative;
        }
        
        .section-title h2 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 900;
            font-size: 2.5rem;
            margin-bottom: 20px;
            background: linear-gradient(to right, var(--primary), var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            display: inline-block;
        }
        
        .section-title p {
            max-width: 700px;
            margin: 0 auto;
            font-size: 1.1rem;
        }
        
        /* Attractions Section */
        .attractions-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 30px;
        }
        
        .attraction-card {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            opacity: 0;
            transform: translateY(20px);
        }
        
        .attraction-card.animate {
            opacity: 1;
            transform: translateY(0);
            transition: all 0.5s ease;
        }
        
        .attraction-card:nth-child(1) { transition-delay: 0.1s; }
        .attraction-card:nth-child(2) { transition-delay: 0.2s; }
        .attraction-card:nth-child(3) { transition-delay: 0.3s; }
        .attraction-card:nth-child(4) { transition-delay: 0.4s; }
        .attraction-card:nth-child(5) { transition-delay: 0.5s; }
        .attraction-card:nth-child(6) { transition-delay: 0.6s; }
        
        .attraction-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 62, 130, 0.3);
        }
        
        .attraction-img {
            height: 200px;
            width: 100%;
            object-fit: cover;
        }
        
        .attraction-content {
            padding: 20px;
        }
        
        .attraction-content h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
            color: var(--primary);
        }
        
        .attraction-content p {
            margin-bottom: 15px;
        }
        
        .attraction-tag {
            display: inline-block;
            padding: 5px 10px;
            background: rgba(0, 225, 255, 0.2);
            border-radius: 20px;
            font-size: 0.8rem;
            margin-right: 5px;
            margin-bottom: 5px;
        }
        
        /* Park Map Section */
        .park-map {
            text-align: center;
        }
        
        .map-container {
            position: relative;
            max-width: 900px;
            margin: 0 auto;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            border: 2px solid var(--primary);
            opacity: 0;
            transform: scale(0.9);
            transition: all 0.5s ease;
        }
        
        .map-container.animate {
            opacity: 1;
            transform: scale(1);
        }
        
        .map-img {
            width: 100%;
            height: auto;
            display: block;
        }
        
        /* Promotions Section - Improved */
        .promotions {
            position: relative;
            overflow: hidden;
        }
        
        .promotions::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            animation: rotate 20s linear infinite;
            z-index: 0;
        }
        
        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }
        
        .promo-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            position: relative;
            z-index: 1;
        }
        
        .promo-card {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            transition: all 0.4s ease;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            opacity: 0;
            transform: translateY(20px);
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 400px;
        }
        
        .promo-card.animate {
            opacity: 1;
            transform: translateY(0);
            transition: all 0.5s ease;
        }
        
        .promo-card:nth-child(1) { transition-delay: 0.1s; }
        .promo-card:nth-child(2) { transition-delay: 0.3s; }
        .promo-card:nth-child(3) { transition-delay: 0.5s; }
        
        .promo-card:hover {
            transform: translateY(-10px) scale(1.02);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
            border: 1px solid rgba(0, 225, 255, 0.5);
            background: rgba(255, 255, 255, 0.08);
        }
        
        .promo-icon-container {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 25px;
            background: linear-gradient(135deg, rgba(255, 62, 130, 0.2), rgba(0, 225, 255, 0.2));
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        
        .promo-icon {
            font-size: 2.5rem;
            color: var(--accent);
        }
        
        .promo-card h3 {
            font-size: 1.8rem;
            margin-bottom: 20px;
            color: var(--primary);
            font-family: 'Montserrat', sans-serif;
        }
        
        .promo-card p {
            margin-bottom: 25px;
            flex-grow: 1;
        }
        
        .promo-card .btn {
            align-self: center;
            margin-top: auto;
        }
        
        .promo-badge {
            position: absolute;
            top: -10px;
            right: -10px;
            background: var(--primary);
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: bold;
            transform: rotate(10deg);
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
        }
        
        /* Location Section */
        .location {
            text-align: center;
        }
        
        .location-info {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .location-card {
            flex: 1;
            min-width: 250px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            padding: 30px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .location-card i {
            font-size: 2rem;
            color: var(--primary);
            margin-bottom: 15px;
        }
        
        .location-card h3 {
            font-size: 1.3rem;
            margin-bottom: 10px;
        }
        
        .map-embed {
            height: 400px;
            width: 100%;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            border: 2px solid var(--accent);
        }
        
        /* Footer - Simplified */
        footer {
            background: var(--secondary);
            padding: 30px 0 15px;
            text-align: center;
        }
        
        .copyright {
            color: rgba(255, 255, 255, 0.6);
            font-size: 0.9rem;
        }
        
        .copyright a {
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            transition: color 0.3s ease;
        }
        
        .copyright a:hover {
            color: var(--accent);
        }
        
        /* Animations */
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }
        
        .pulse {
            animation: pulse 2s infinite;
        }
        
        /* Responsive Styles - Improved */
        @media (max-width: 1200px) {
            .hero h1 {
                font-size: 3.5rem;
            }
            
            .promo-card {
                min-height: 380px;
            }
        }
        
        @media (max-width: 992px) {
            .hero h1 {
                font-size: 3rem;
            }
            
            .hero-image {
                width: 45%;
            }
            
            .attractions-grid {
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            }
            
            .promo-card {
                min-height: auto;
            }
        }
        
        @media (max-width: 768px) {
            nav ul {
                display: none;
                position: fixed;
                top: 80px;
                left: 0;
                width: 100%;
                background: rgba(26, 10, 38, 0.98);
                flex-direction: column;
                align-items: center;
                padding: 20px 0;
                gap: 15px;
                border-bottom: 1px solid rgba(255, 62, 130, 0.3);
            }
            
            nav ul.show {
                display: flex;
            }
            
            .mobile-menu-btn {
                display: block;
                z-index: 1001;
            }
            
            .hero {
                text-align: center;
                padding-top: 70px;
            }
            
            .hero-content {
                max-width: 100%;
            }
            
            .hero-image {
                position: relative;
                width: 80%;
                margin: 30px auto 0;
                transform: none;
                right: auto;
                top: auto;
            }
            
            .section-title h2 {
                font-size: 2rem;
            }
            
            .location-info {
                flex-direction: column;
                align-items: center;
            }
            
            .location-card {
                width: 100%;
                max-width: 400px;
            }
        }
        
        @media (max-width: 576px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .hero p {
                font-size: 1.1rem;
            }
            
            .btn {
                padding: 10px 25px;
                font-size: 0.9rem;
            }
            
            section {
                padding: 70px 0;
            }
            
            .section-title h2 {
                font-size: 1.8rem;
            }
            
            .section-title p {
                font-size: 1rem;
            }
            
            .attractions-grid {
                grid-template-columns: 1fr;
            }
            
            .promo-grid {
                grid-template-columns: 1fr;
            }
            
            .promo-card {
                padding: 25px;
            }
            
            .promo-card h3 {
                font-size: 1.5rem;
            }
        }
                /* Restaurant Section */
        .dining {
            position: relative;
            overflow: hidden;
        }

        .dining::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            opacity: 0.15;
            z-index: 0;
        }

        .restaurant-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 40px;
            position: relative;
            z-index: 1;
        }

        .restaurant-card {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.4s ease;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            opacity: 0;
            transform: translateY(20px);
        }

        .restaurant-card.animate {
            opacity: 1;
            transform: translateY(0);
            transition: all 0.5s ease;
        }

        .restaurant-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
            border: 1px solid var(--primary);
        }

        .restaurant-img {
            height: 220px;
            width: 100%;
            object-fit: cover;
        }

        .restaurant-content {
            padding: 25px;
        }

        .restaurant-content h3 {
            font-size: 1.6rem;
            margin-bottom: 15px;
            color: var(--primary);
            font-family: 'Montserrat', sans-serif;
        }

        .restaurant-cuisine {
            display: inline-block;
            padding: 5px 15px;
            background: rgba(0, 225, 255, 0.2);
            border-radius: 20px;
            font-size: 0.9rem;
            margin-bottom: 15px;
            color: var(--accent);
        }

        .restaurant-info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .restaurant-info-item {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.9rem;
        }

        .restaurant-info-item i {
            color: var(--primary);
        }

        .restaurant-description {
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .restaurant-features {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-bottom: 20px;
        }

        .restaurant-feature {
            background: rgba(255, 255, 255, 0.1);
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 0.8rem;
        }

        .menu-btn {
            display: inline-block;
            padding: 10px 25px;
            background: var(--primary);
            color: white;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .menu-btn:hover {
            background: var(--accent);
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 225, 255, 0.4);
        }

        @media (max-width: 768px) {
            .restaurant-grid {
                grid-template-columns: 1fr;
            }
            
            .restaurant-img {
                height: 180px;
            }
        }
    </style>
</head>
<body>
    <!-- Floating Background Elements -->
    <div class="floating-elements">
        <div class="floating-element" style="width: 100px; height: 100px; top: 20%; left: 10%;"></div>
        <div class="floating-element" style="width: 150px; height: 150px; top: 60%; left: 80%;"></div>
        <div class="floating-element" style="width: 80px; height: 80px; top: 30%; left: 70%;"></div>
        <div class="floating-element" style="width: 120px; height: 120px; top: 70%; left: 20%;"></div>
    </div>
    
    <!-- Header -->
    <header id="header">
        <div class="container header-container">
            <a href="#" class="logo">
                <img src="https://i.imgur.com/JrpDMUR.png" alt="Beatscape Logo" class="logo-img">
                <span class="logo-text">BEATSCAPE</span>
            </a>
            
            <button class="mobile-menu-btn" id="mobileMenuBtn">
                <i class="fas fa-bars"></i>
            </button>
            
            <nav>
                <ul id="navMenu">
                    <li><a href="#attractions">Attractions</a></li>
                    <li><a href="#map">Park Map</a></li>
                    <li><a href="#dining">Dining</a></li>
                    <li><a href="#promotions">Promotions</a></li>
                    <li><a href="#location">Location</a></li>
                </ul>
            </nav>
        </div>
    </header>
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <h1>Where every step creates a rhythm</h1>
                <p>The music themed amusement park located in Portland, OR</p>
                <a href="#" class="btn pulse">Plan Your Visit</a>
            </div>
            
            <img src="https://ik.imagekit.io/notdefinity/rowa%20cowster.png?updatedAt=1748918205806" alt="Beatscape Park" class="hero-image">
        </div>
    </section>
    
    <!-- Attractions Section -->
    <section id="attractions" class="attractions">
        <div class="container">
            <div class="section-title">
                <h2>Our Pulse-Pounding Attractions</h2>
                <p>Experience rides and shows that sync with your heartbeat and amplify your adrenaline</p>
            </div>
            
            <div class="attractions-grid">
                <div class="attraction-card">
                    <img src="https://ik.imagekit.io/notdefinity/Copilot_20250602_191833.png" alt="Bass Drop" class="attraction-img">
                    <div class="attraction-content">
                        <h3>Bass Drop</h3>
                        <p>A 200-foot free-fall tower</p>
                        <div>
                            <span class="attraction-tag">Thrill Ride</span>
                            <span class="attraction-tag">Extreme</span>
                            <span class="attraction-tag">Height: 200ft</span>
                        </div>
                    </div>
                </div>
                
                <div class="attraction-card">
                    <img src="https://ik.imagekit.io/notdefinity/Copilot_20250602_192419.png" alt="Neon Rush" class="attraction-img">
                    <div class="attraction-content">
                        <h3>Neon Rush</h3>
                        <p>A roller coaster that is neon...</p>
                        <div>
                            <span class="attraction-tag">Roller Coaster</span>
                            <span class="attraction-tag">High-Speed</span>
                            <span class="attraction-tag">Length: 3,200ft</span>
                        </div>
                    </div>
                </div>
                
                <div class="attraction-card">
                    <img src="https://ik.imagekit.io/xeqk7r0ly/Copilot_20250604_211138.png?updatedAt=1749096711178" alt="Drum runn" class="attraction-img">
                    <div class="attraction-content">
                        <h3>Drum Runn</h3>
                        <p>A roller coaster that moves like a drumbeat</p>
                        <div>
                            <span class="attraction-tag">Scenic</span>
                            <span class="attraction-tag">Family</span>
                            <span class="attraction-tag">Height: 175ft</span>
                        </div>
                    </div>
                </div>
                
                <div class="attraction-card">
                    <img src="https://via.placeholder.com/400x200/00e1ff/ffffff?text=Beat+Battle" alt="Beat Battle" class="attraction-img">
                    <div class="attraction-content">
                        <h3>Echo Drift</h3>
                        <p>A simulator ride that launches riders through glowing soundwaves, twisting through neon tunnels of pulsing bass.</p>
                        <div>
                            <span class="attraction-tag">Interactive</span>
                            <span class="attraction-tag">Technology</span>
                            <span class="attraction-tag">All Ages</span>
                        </div>
                    </div>
                </div>
                
                <div class="attraction-card">
                    <img src="https://via.placeholder.com/400x200/ff3e82/ffffff?text=Rhythm+River" alt="Rhythm River" class="attraction-img">
                    <div class="attraction-content">
                        <h3>Vinyl Vortex</h3>
                        <p>A looping coaster that spirals like a spinning record, pulling riders through neon grooves with retro beats.</p>
                        <div>
                            <span class="attraction-tag">Family</span>
                            <span class="attraction-tag">Roller Coaster</span>
                        </div>
                    </div>
                </div>
                
                <div class="attraction-card">
                    <img src="https://via.placeholder.com/400x200/00e1ff/ffffff?text=The+Resonator" alt="The Resonator" class="attraction-img">
                    <div class="attraction-content">
                        <h3>The Resonator</h3>
                        <p>A 360° spinning ride that uses subwoofers to make you feel the music as much as hear it.</p>
                        <div>
                            <span class="attraction-tag">Spinning</span>
                            <span class="attraction-tag">Intense</span>
                            <span class="attraction-tag">Sensory</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Park Map Section -->
    <section id="map" class="park-map">
        <div class="container">
            <div class="section-title">
                <h2>Park Layout</h2>
                <p>Navigate through our music-themed zones and discover all the beats waiting for you</p>
            </div>
            
            <div class="map-container">
                <img src="https://ik.imagekit.io/xeqk7r0ly/Copilot_20250604_210557.png?updatedAt=1749096441386" alt="Beatscape Park Map" class="map-img">
            </div>
        </div>
    </section>
    
    <!-- Promotions Section - Improved -->
    <section id="promotions" class="promotions">
        <div class="container">
            <div class="section-title">
                <h2>Exclusive Promotions</h2>
                <p>Special offers and partnerships to enhance your Beatscape experience</p>
            </div>
            
            <div class="promo-grid">
                <div class="promo-card">
                    <div class="promo-icon-container">
                        <i class="fas fa-headphones promo-icon"></i>
                    </div>
                    <h3>Spotify Premium Bundle</h3>
                    <p>Get 3 months of Spotify Premium free with your season pass purchase. Curate your ride playlists before you even arrive! Plus, exclusive access to our official Beatscape playlists.</p>
                    <a href="#" class="btn btn-secondary">Learn More</a>
                </div>
                
                <div class="promo-card">
                    <div class="promo-icon-container">
                        <i class="fas fa-guitar promo-icon"></i>
                    </div>
                    <h3>Music Festival Package</h3>
                    <p>Combine your park ticket with passes to Portland's top music festivals for a 20% discount. Experience the best of both worlds - thrilling rides by day, amazing concerts by night.</p>
                    <a href="#" class="btn btn-secondary">View Events</a>
                </div>
                
                <div class="promo-card">
                    <div class="promo-icon-container">
                        <i class="fas fa-utensils promo-icon"></i>
                    </div>
                    <h3>Dine & Groove</h3>
                    <p>Enjoy 15% off at all park restaurants when you purchase our meal plan. Plus, VIP access to our rooftop dining area with live DJ performances every evening.</p>
                    <a href="#" class="btn btn-secondary">Explore Options</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Dining Section -->
<section id="dining" class="dining">
    <div class="container">
        <div class="section-title">
            <h2>Musical Dining Experiences</h2>
            <p>From gourmet meals to quick bites, our restaurants hit all the right notes</p>
        </div>
        
        <div class="restaurant-grid">
            <div class="restaurant-card">
                <img src="https://ik.imagekit.io/notdefinity/Copilot_20250602_193258.png" alt="Vinyl Diner" class="restaurant-img">
                <div class="restaurant-content">
                    <h3>Vinyl Diner</h3>
                    <span class="restaurant-cuisine">American Retro Diner</span>
                    
                    <div class="restaurant-info">
                        <div class="restaurant-info-item">
                            <i class="fas fa-clock"></i> 11AM - 10PM
                        </div>
                        <div class="restaurant-info-item">
                            <i class="fas fa-dollar-sign"></i> $$
                        </div>
                        <div class="restaurant-info-item">
                            <i class="fas fa-music"></i> 50s-60s Rock
                        </div>
                    </div>
                    
                    <p class="restaurant-description">
                        Step back in time at our 1950s-themed diner where classic rock sets the mood. Enjoy burgers, shakes, and fries while listening to vinyl records on authentic jukeboxes.
                    </p>
                    
                    <div class="restaurant-features">
                        <span class="restaurant-feature">Vegetarian Options</span>
                        <span class="restaurant-feature">Kid-Friendly</span>
                        <span class="restaurant-feature">Gluten-Free</span>
                    </div>
                    
                    <a href="#" class="menu-btn">View Menu</a>
                </div>
            </div>
            
            <div class="restaurant-card">
                <img src="https://ik.imagekit.io/notdefinity/Copilot_20250602_193343.png" alt="Bassline Bistro" class="restaurant-img">
                <div class="restaurant-content">
                    <h3>Bassline Bistro</h3>
                    <span class="restaurant-cuisine">Fusion Cuisine</span>
                    
                    <div class="restaurant-info">
                        <div class="restaurant-info-item">
                            <i class="fas fa-clock"></i> 5PM - 11PM
                        </div>
                        <div class="restaurant-info-item">
                            <i class="fas fa-dollar-sign"></i> $$$
                        </div>
                        <div class="restaurant-info-item">
                            <i class="fas fa-music"></i> Jazz & Blues
                        </div>
                    </div>
                    
                    <p class="restaurant-description">
                        Our upscale dining experience pairs gourmet dishes with live jazz performances. The menu changes seasonally to feature fresh, locally-sourced ingredients with global influences.
                    </p>
                    
                    <div class="restaurant-features">
                        <span class="restaurant-feature">Reservations Recommended</span>
                        <span class="restaurant-feature">Wine Pairings</span>
                        <span class="restaurant-feature">Chef's Table</span>
                    </div>
                    
                    <a href="#" class="menu-btn">View Menu</a>
                </div>
            </div>
            
            <div class="restaurant-card">
                <img src="https://ik.imagekit.io/notdefinity/Copilot_20250602_193421.png" alt="Synthwave Sushi" class="restaurant-img">
                <div class="restaurant-content">
                    <h3>Synthwave Sushi</h3>
                    <span class="restaurant-cuisine">Japanese Fusion</span>
                    
                    <div class="restaurant-info">
                        <div class="restaurant-info-item">
                            <i class="fas fa-clock"></i> 12PM - 10PM
                        </div>
                        <div class="restaurant-info-item">
                            <i class="fas fa-dollar-sign"></i> $$
                        </div>
                        <div class="restaurant-info-item">
                            <i class="fas fa-music"></i> Electronic
                        </div>
                    </div>
                    
                    <p class="restaurant-description">
                        Neon lights and futuristic decor set the stage for our innovative sushi rolls and Japanese-inspired cocktails. The beats match the vibe with curated synthwave playlists.
                    </p>
                    
                    <div class="restaurant-features">
                        <span class="restaurant-feature">Sushi Bar</span>
                        <span class="restaurant-feature">Vegan Options</span>
                        <span class="restaurant-feature">Happy Hour</span>
                    </div>
                    
                    <a href="#" class="menu-btn">View Menu</a>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- Location Section -->
    <section id="location" class="location">
        <div class="container">
            <div class="section-title">
                <h2>Find Your Beat in Portland</h2>
                <p>Located in the heart of Oregon's most vibrant city</p>
            </div>
            
            <div class="location-info">
                <div class="location-card">
                    <i class="fas fa-map-marker-alt"></i>
                    <h3>Address</h3>
                    <p>1234 Rhythm Road<br>Portland, OR 97201</p>
                </div>
                
                <div class="location-card">
                    <i class="fas fa-clock"></i>
                    <h3>Hours</h3>
                    <p>Monday - Thursday: 10AM - 8PM<br>
                       Friday - Sunday: 9AM - 10PM</p>
                </div>
                
                <div class="location-card">
                    <i class="fas fa-phone-alt"></i>
                    <h3>Contact</h3>
                    <p>(503) 555-BEAT<br>info@beatscape.com</p>
                </div>
            </div>
            
            <div class="map-embed">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2795.597942885153!2d-122.67668292413138!3d45.52306247107239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54950a0b1de504cd%3A0x279b349fd03e13b8!2sPortland%2C%20OR!5e0!3m2!1sen!2sus!4v1689876543210!5m2!1sen!2sus" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </section>
    
    <!-- Footer - Simplified -->
    <footer>
        <div class="container">
            <p class="copyright">&copy; 2023 Beatscape. All rights reserved. | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
        </div>
    </footer>
    
    <script>
        // Scroll animations
        document.addEventListener('DOMContentLoaded', function() {
            // Animate elements when they come into view
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('animate');
                    }
                });
            }, {
                threshold: 0.1
            });
            
            document.querySelectorAll('.attraction-card, .map-container,.restaurant-card, .promo-card').forEach(el => {
                observer.observe(el);
            });
            
            // Header scroll effect
            const header = document.getElementById('header');
            window.addEventListener('scroll', function() {
                if (window.scrollY > 50) {
                    header.classList.add('scrolled');
                } else {
                    header.classList.remove('scrolled');
                }
            });
            
            // Mobile menu toggle - Improved
            const mobileMenuBtn = document.getElementById('mobileMenuBtn');
            const navMenu = document.getElementById('navMenu');
            
            mobileMenuBtn.addEventListener('click', function() {
                navMenu.classList.toggle('show');
                mobileMenuBtn.innerHTML = navMenu.classList.contains('show') ? 
                    '<i class="fas fa-times"></i>' : '<i class="fas fa-bars"></i>';
            });
            
            // Close menu when clicking on a link
            document.querySelectorAll('#navMenu a').forEach(link => {
                link.addEventListener('click', function() {
                    navMenu.classList.remove('show');
                    mobileMenuBtn.innerHTML = '<i class="fas fa-bars"></i>';
                });
            });
            
            // Smooth scrolling for anchor links
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function(e) {
                    e.preventDefault();
                    
                    const targetId = this.getAttribute('href');
                    if (targetId === '#') return;
                    
                    const targetElement = document.querySelector(targetId);
                    if (targetElement) {
                        window.scrollTo({
                            top: targetElement.offsetTop - 80,
                            behavior: 'smooth'
                        });
                    }
                });
            });
            
            // Initialize header state
            if (window.scrollY > 50) {
                header.classList.add('scrolled');
            }
        });
    </script>
</body>
</html>
