<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alibaba.com - Plateforme de Commerce International</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #FF6A00;
            --primary-dark: #E05D00;
            --secondary-color: #2D2D2D;
            --light-bg: #F8F9FA;
            --white: #FFFFFF;
            --dark-text: #333333;
            --gray-text: #666666;
            --light-gray: #DDDDDD;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--light-bg);
            color: var(--dark-text);
            line-height: 1.6;
        }
        
        /* Header Styles */
        .header {
            background-color: var(--white);
            padding: 15px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        
        .logo {
            max-width: 180px;
            height: auto;
        }
        
        .search-container {
            display: flex;
            width: 50%;
            margin: 0 20px;
            border-radius: 4px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        
        .search-category {
            border: none;
            padding: 0 15px;
            background-color: var(--light-bg);
            outline: none;
            border-right: 1px solid var(--light-gray);
            min-width: 180px;
        }
        
        .search-input {
            flex-grow: 1;
            padding: 12px 15px;
            border: none;
            outline: none;
            font-size: 14px;
        }
        
        .search-btn, .image-search-btn {
            background-color: var(--primary-color);
            color: var(--white);
            border: none;
            padding: 0 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .search-btn:hover, .image-search-btn:hover {
            background-color: var(--primary-dark);
        }
        
        .image-search-btn {
            padding: 0 15px;
            font-size: 18px;
        }
        
        .user-menu {
            display: flex;
            align-items: center;
        }
        
        .user-menu a {
            margin: 0 12px;
            text-decoration: none;
            color: var(--dark-text);
            font-size: 14px;
            transition: color 0.3s;
            display: flex;
            align-items: center;
        }
        
        .user-menu a i {
            margin-right: 5px;
            font-size: 16px;
        }
        
        .user-menu a:hover {
            color: var(--primary-color);
        }
        
        .badge {
            background-color: var(--primary-color);
            color: var(--white);
            border-radius: 50%;
            padding: 2px 6px;
            font-size: 0.7em;
            margin-left: 5px;
        }
        
        /* Navigation Styles */
        .main-nav {
            background-color: var(--primary-color);
            color: var(--white);
            padding: 0;
            display: flex;
            justify-content: center;
        }
        
        .nav-list {
            display: flex;
            list-style: none;
            max-width: 1200px;
            width: 100%;
        }
        
        .nav-item {
            padding: 15px 20px;
            position: relative;
        }
        
        .nav-item a {
            color: var(--white);
            text-decoration: none;
            font-weight: 500;
            display: flex;
            align-items: center;
        }
        
        .nav-item a i {
            margin-right: 8px;
        }
        
        .nav-item:hover {
            background-color: var(--primary-dark);
        }
        
        /* Banner Styles */
        .main-banner {
            width: 100%;
            overflow: hidden;
            position: relative;
            margin-bottom: 30px;
        }
        
        .banner-image {
            width: 100%;
            height: 500px;
            object-fit: cover;
        }
        
        .banner-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: var(--white);
            background-color: rgba(0,0,0,0.6);
            padding: 40px;
            border-radius: 8px;
            max-width: 80%;
            backdrop-filter: blur(5px);
        }
        
        .banner-title {
            font-size: 2.8rem;
            margin-bottom: 15px;
            color: var(--white);
            text-shadow: 0 2px 4px rgba(0,0,0,0.3);
        }
        
        .banner-desc {
            font-size: 1.3rem;
            margin-bottom: 30px;
            text-shadow: 0 1px 2px rgba(0,0,0,0.3);
        }
        
        .cta-button {
            background-color: var(--primary-color);
            color: var(--white);
            border: none;
            padding: 15px 40px;
            font-size: 1.1rem;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            display: inline-flex;
            align-items: center;
        }
        
        .cta-button i {
            margin-left: 8px;
        }
        
        .cta-button:hover {
            background-color: var(--primary-dark);
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.3);
        }
        
        /* Sections Common Styles */
        .section-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        .section-title {
            font-size: 2rem;
            color: var(--dark-text);
            margin-bottom: 30px;
            text-align: center;
            position: relative;
            padding-bottom: 15px;
        }
        
        .section-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background-color: var(--primary-color);
            border-radius: 2px;
        }
        
        /* Services Section */
        .services-section {
            padding: 60px 0;
            background-color: var(--white);
            margin-bottom: 30px;
        }
        
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 30px;
            margin-top: 30px;
        }
        
        .service-card {
            text-align: center;
            padding: 25px 15px;
            transition: all 0.3s;
            border-radius: 8px;
            background-color: var(--white);
            box-shadow: 0 3px 10px rgba(0,0,0,0.05);
        }
        
        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        
        .service-icon {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 15px;
        }
        
        .service-title {
            font-weight: bold;
            margin-bottom: 10px;
            color: var(--dark-text);
            font-size: 1.1rem;
        }
        
        .service-desc {
            color: var(--gray-text);
            font-size: 0.9rem;
            line-height: 1.5;
        }
        
        /* Categories Section */
        .categories-section {
            padding: 60px 0;
            background-color: var(--light-bg);
            margin-bottom: 30px;
        }
        
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
            margin-top: 30px;
        }
        
        .category-card {
            background-color: var(--white);
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 3px 10px rgba(0,0,0,0.05);
            transition: all 0.3s;
            text-align: center;
        }
        
        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        
        .category-image {
            width: 100%;
            height: 160px;
            object-fit: cover;
        }
        
        .category-name {
            font-weight: bold;
            color: var(--dark-text);
            padding: 15px;
            display: block;
        }
        
        /* Products Section */
        .products-section {
            padding: 60px 0;
            background-color: var(--white);
            margin-bottom: 30px;
        }
        
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
            margin-top: 30px;
        }
        
        .product-card {
            background-color: var(--white);
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 3px 10px rgba(0,0,0,0.05);
            transition: all 0.3s;
            padding: 0;
            border: 1px solid #eee;
        }
        
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
        
        .product-image-container {
            height: 200px;
            background-color: #f9f9f9;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            position: relative;
        }
        
        .product-image {
            max-width: 100%;
            max-height: 100%;
            object-fit: contain;
        }
        
        .product-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: var(--primary-color);
            color: var(--white);
            padding: 3px 8px;
            border-radius: 3px;
            font-size: 0.8rem;
        }
        
        .product-details {
            padding: 20px;
        }
        
        .product-name {
            font-weight: bold;
            margin-bottom: 8px;
            color: var(--dark-text);
            font-size: 1.1rem;
        }
        
        .product-price {
            color: var(--primary-color);
            font-weight: bold;
            font-size: 1.2rem;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
        }
        
        .product-price .original {
            text-decoration: line-through;
            color: var(--gray-text);
            font-size: 0.9rem;
            margin-left: 8px;
        }
        
        .product-supplier {
            color: var(--gray-text);
            font-size: 0.9rem;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }
        
        .product-supplier i {
            margin-right: 5px;
            color: var(--primary-color);
        }
        
        .product-rating {
            color: #FFC107;
            margin-bottom: 15px;
            font-size: 0.9rem;
        }
        
        .product-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }
        
        .product-btn {
            background-color: var(--light-bg);
            color: var(--dark-text);
            border: none;
            padding: 10px 15px;
            font-size: 0.9rem;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
            flex: 1;
            margin: 0 5px;
        }
        
        .product-btn i {
            margin-right: 5px;
        }
        
        .product-btn:hover {
            background-color: #e0e0e0;
        }
        
        .product-btn.primary {
            background-color: var(--primary-color);
            color: var(--white);
        }
        
        .product-btn.primary:hover {
            background-color: var(--primary-dark);
        }
        
        /* Newsletter Section */
        .newsletter-section {
            padding: 60px 0;
            background-color: var(--primary-color);
            color: var(--white);
            text-align: center;
        }
        
        .newsletter-title {
            font-size: 1.8rem;
            margin-bottom: 15px;
        }
        
        .newsletter-desc {
            font-size: 1.1rem;
            margin-bottom: 25px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }
        
        .newsletter-form {
            display: flex;
            max-width: 500px;
            margin: 0 auto;
        }
        
        .newsletter-input {
            flex-grow: 1;
            padding: 15px;
            border: none;
            border-radius: 4px 0 0 4px;
            font-size: 1rem;
            outline: none;
        }
        
        .newsletter-btn {
            background-color: var(--secondary-color);
            color: var(--white);
            border: none;
            padding: 0 25px;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 1rem;
            font-weight: 500;
        }
        
        .newsletter-btn:hover {
            background-color: #1a1a1a;
        }
        
        /* Footer Styles */
        .footer {
            background-color: var(--secondary-color);
            color: #ddd;
            padding: 60px 0 20px;
        }
        
        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .footer-column-title {
            font-weight: bold;
            color: var(--white);
            margin-bottom: 20px;
            display: block;
            font-size: 1.1rem;
            position: relative;
            padding-bottom: 10px;
        }
        
        .footer-column-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 40px;
            height: 2px;
            background-color: var(--primary-color);
        }
        
        .footer-link {
            display: block;
            color: #aaa;
            margin-bottom: 12px;
            text-decoration: none;
            transition: all 0.3s;
            font-size: 0.9rem;
        }
        
        .footer-link i {
            margin-right: 8px;
            width: 20px;
            text-align: center;
        }
        
        .footer-link:hover {
            color: var(--primary-color);
            transform: translateX(5px);
        }
        
        .social-links {
            display: flex;
            margin-top: 20px;
        }
        
        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 36px;
            height: 36px;
            background-color: #3a3a3a;
            color: var(--white);
            border-radius: 50%;
            margin-right: 10px;
            transition: all 0.3s;
            text-decoration: none;
        }
        
        .social-link:hover {
            background-color: var(--primary-color);
            transform: translateY(-3px);
        }
        
        .footer-bottom {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid #3a3a3a;
            color: #888;
            font-size: 0.9rem;
        }
        
        .payment-methods {
            display: flex;
            justify-content: center;
            margin-top: 20px;
            flex-wrap: wrap;
        }
        
        .payment-method {
            margin: 0 8px 10px;
            font-size: 1.8rem;
            color: #aaa;
        }
        
        /* Responsive Adjustments */
        @media (max-width: 1200px) {
            .header {
                padding: 15px 3%;
            }
        }
        
        @media (max-width: 992px) {
            .header {
                flex-direction: column;
                padding: 15px;
            }
            
            .search-container {
                width: 100%;
                margin: 15px 0;
            }
            
            .user-menu {
                margin-top: 15px;
                width: 100%;
                justify-content: center;
                flex-wrap: wrap;
            }
            
            .nav-list {
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .nav-item {
                padding: 10px 15px;
            }
            
            .banner-content {
                padding: 30px;
            }
            
            .banner-title {
                font-size: 2.2rem;
            }
            
            .banner-desc {
                font-size: 1.1rem;
            }
        }
        
        @media (max-width: 768px) {
            .search-category {
                min-width: 120px;
                font-size: 0.9rem;
            }
            
            .banner-image {
                height: 400px;
            }
            
            .banner-content {
                max-width: 90%;
                padding: 20px;
            }
            
            .banner-title {
                font-size: 1.8rem;
            }
            
            .banner-desc {
                font-size: 1rem;
                margin-bottom: 20px;
            }
            
            .cta-button {
                padding: 12px 30px;
                font-size: 1rem;
            }
            
            .section-title {
                font-size: 1.6rem;
            }
            
            .newsletter-title {
                font-size: 1.5rem;
            }
            
            .newsletter-desc {
                font-size: 1rem;
            }
        }
        
        @media (max-width: 576px) {
            .search-category {
                display: none;
            }
            
            .search-input {
                border-radius: 4px 0 0 4px;
            }
            
            .banner-image {
                height: 300px;
            }
            
            .banner-title {
                font-size: 1.5rem;
            }
            
            .banner-desc {
                font-size: 0.9rem;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .newsletter-input {
                border-radius: 4px;
                margin-bottom: 10px;
            }
            
            .newsletter-btn {
                border-radius: 4px;
                padding: 12px;
            }
            
            .product-actions {
                flex-direction: column;
            }
            
            .product-btn {
                margin: 5px 0;
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <img src="images/logo.jpg" alt="Alibaba Logo" class="logo">
        
        <div class="search-container">
            <select class="search-category">
                <option value="all">Toutes les Catégories</option>
                <option value="electronics">Électronique</option>
                <option value="fashion">Mode</option>
                <option value="home">Maison - Jardin</option>
                <option value="industry">Industrie</option>
            </select>
            <input type="text" placeholder="Rechercher des produits, fournisseurs..." class="search-input">
            <button class="search-btn"><i class="fas fa-search"></i> Rechercher</button>
            <button class="image-search-btn"><i class="fas fa-camera"></i></button>
        </div>

        <div class="user-menu">
            <a href="login2.jsf"><i class="fas fa-sign-in-alt"></i> Connexion</a>
            <a href="register2.jsf"><i class="fas fa-user-plus"></i> S'inscrire</a>
            <a href="#"><i class="fas fa-user"></i> Mon Alibaba</a>
            <a href="#"><i class="fas fa-shopping-cart"></i> Panier <span class="badge">3</span></a>
            <a href="#"><i class="fas fa-bell"></i> Notifications <span class="badge">2</span></a>
            <a href="#"><i class="fas fa-question-circle"></i> Aide</a>
        </div>
    </header>

    <!-- Main Navigation -->
    <nav class="main-nav">
        <ul class="nav-list">
            <li class="nav-item"><a href="#"><i class="fas fa-bars"></i> Toutes les Catégories</a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-file-invoice-dollar"></i> Demande de Devis</a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-shipping-fast"></i> Prêt à Expédier</a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-shield-alt"></i> Assurance Commerciale</a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-calendar-alt"></i> Salons Commerciaux</a></li>
        </ul>
    </nav>

    <!-- Main Banner -->
    <section class="main-banner">
        <img src="images/banner.jpg" alt="Banner" class="banner-image">
        <div class="banner-content">
            <h2 class="banner-title">Sourcing Global Simplifié</h2>
            <p class="banner-desc">Connectez-vous avec des millions de fournisseurs dans le monde</p>
            <button class="cta-button">Acheter Maintenant <i class="fas fa-arrow-right"></i></button>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services-section">
        <div class="section-container">
            <h2 class="section-title">Nos Services</h2>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-globe"></i></div>
                    <h3 class="service-title">Commerce International</h3>
                    <p class="service-desc">Accès à des fournisseurs du monde entier pour vos besoins commerciaux</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-shield-alt"></i></div>
                    <h3 class="service-title">Assurance Transaction</h3>
                    <p class="service-desc">Protection de vos paiements jusqu'à la livraison satisfaisante</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-shipping-fast"></i></div>
                    <h3 class="service-title">Logistique</h3>
                    <p class="service-desc">Solutions de transport et de douane pour vos marchandises</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-search-dollar"></i></div>
                    <h3 class="service-title">Inspection Produit</h3>
                    <p class="service-desc">Services d'inspection avant expédition pour garantir la qualité</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-language"></i></div>
                    <h3 class="service-title">Traduction</h3>
                    <p class="service-desc">Services de traduction professionnelle pour vos communications</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-handshake"></i></div>
                    <h3 class="service-title">Services d'Agent</h3>
                    <p class="service-desc">Assistance locale pour vos achats en Chine et en Asie</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="categories-section">
        <div class="section-container">
            <h2 class="section-title">Catégories Populaires</h2>
            <div class="categories-grid">
                <div class="category-card">
                    <img src="images/electronics.jpg" alt="Électronique" class="category-image">
                    <span class="category-name">Électronique</span>
                </div>
                <div class="category-card">
                    <img src="images/fashion.jpg" alt="Mode" class="category-image">
                    <span class="category-name">Mode</span>
                </div>
                <div class="category-card">
                    <img src="images/home.jpg" alt="Maison & Jardin" class="category-image">
                    <span class="category-name">Maison - Jardin</span>
                </div>
                <div class="category-card">
                    <img src="images/beauty.jpg" alt="Beauté & Santé" class="category-image">
                    <span class="category-name">Beauté - Santé</span>
                </div>
                <div class="category-card">
                    <img src="images/toys.jpg" alt="Jouets & Enfants" class="category-image">
                    <span class="category-name">Jouets - Enfants</span>
                </div>
                <div class="category-card">
                    <img src="images/sports.jpg" alt="Sports & Loisirs" class="category-image">
                    <span class="category-name">Sports - Loisirs</span>
                </div>
                <div class="category-card">
                    <img src="images/automotive.jpg" alt="Automobile" class="category-image">
                    <span class="category-name">Automobile</span>
                </div>
                <div class="category-card">
                    <img src="images/industry.jpg" alt="Industrie" class="category-image">
                    <span class="category-name">Industrie</span>
                </div>
            </div>
        </div>
    </section>

    <!-- Products Section -->
    <section class="products-section">
        <div class="section-container">
            <h2 class="section-title">Produits Recommandés</h2>
            <div class="products-grid">
                <div class="product-card">
                    <div class="product-image-container">
                        <img src="images/product1.jpg" alt="Smartphone" class="product-image">
                        <span class="product-badge">Promo</span>
                    </div>
                    <div class="product-details">
                        <h3 class="product-name">Smartphone Android 128GB</h3>
                        <div class="product-price">
                            $189.99 <span class="original">$249.99</span>
                        </div>
                        <div class="product-supplier">
                            <i class="fas fa-store"></i> Shenzhen Electronics Co.
                        </div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            (124)
                        </div>
                        <div class="product-actions">
                            <button class="product-btn"><i class="fas fa-envelope"></i> Contacter</button>
                            <button class="product-btn primary"><i class="fas fa-cart-plus"></i> Ajouter</button>
                        </div>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image-container">
                        <img src="images/product2.jpg" alt="Montre Intelligente" class="product-image">
                    </div>
                    <div class="product-details">
                        <h3 class="product-name">Montre Intelligente Bluetooth</h3>
                        <div class="product-price">
                            $45.99
                        </div>
                        <div class="product-supplier">
                            <i class="fas fa-store"></i> Guangzhou Wearables Ltd.
                        </div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            (87)
                        </div>
                        <div class="product-actions">
                            <button class="product-btn"><i class="fas fa-envelope"></i> Contacter</button>
                            <button class="product-btn primary"><i class="fas fa-cart-plus"></i> Ajouter</button>
                        </div>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image-container">
                        <img src="images/product3.jpg" alt="Casque Audio" class="product-image">
                        <span class="product-badge">Nouveau</span>
                    </div>
                    <div class="product-details">
                        <h3 class="product-name">Casque Audio Sans Fil</h3>
                        <div class="product-price">
                            $32.50
                        </div>
                        <div class="product-supplier">
                            <i class="fas fa-store"></i> Dongguan Audio Tech
                        </div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            (215)
                        </div>
                        <div class="product-actions">
                            <button class="product-btn"><i class="fas fa-envelope"></i> Contacter</button>
                            <button class="product-btn primary"><i class="fas fa-cart-plus"></i> Ajouter</button>
                        </div>
                    </div>
                </div>
                
                <div class="product-card">
                    <div class="product-image-container">
                        <img src="images/product4.jpg" alt="Sac à Dos" class="product-image">
                    </div>
                    <div class="product-details">
                        <h3 class="product-name">Sac à Dos Ordinateur 15"</h3>
                        <div class="product-price">
                            $28.99 <span class="original">$39.99</span>
                        </div>
                        <div class="product-supplier">
                            <i class="fas fa-store"></i> Yiwu Bags Manufacturer
                        </div>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            (176)
                        </div>
                        <div class="product-actions">
                            <button class="product-btn"><i class="fas fa-envelope"></i> Contacter</button>
                            <button class="product-btn primary"><i class="fas fa-cart-plus"></i> Ajouter</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter-section">
        <div class="section-container">
            <h3 class="newsletter-title">Abonnez-vous à notre newsletter</h3>
            <p class="newsletter-desc">Recevez les dernières offres exclusives et les nouvelles tendances directement dans votre boîte de réception</p>
            <form class="newsletter-form">
                <input type="email" placeholder="Votre adresse email" class="newsletter-input" required>
                <button type="submit" class="newsletter-btn">S'abonner</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="section-container">
            <div class="footer-grid">
                <div class="footer-column">
                    <span class="footer-column-title">Acheter sur Alibaba</span>
                    <a href="#" class="footer-link"><i class="fas fa-check-circle"></i> Protection de l'acheteur</a>
                    <a href="#" class="footer-link"><i class="fas fa-question-circle"></i> Centre d'assistance</a>
                    <a href="#" class="footer-link"><i class="fas fa-file-invoice-dollar"></i> Demander un devis</a>
                    <a href="#" class="footer-link"><i class="fas fa-shipping-fast"></i> Suivi de commande</a>
                </div>
                
                <div class="footer-column">
                    <span class="footer-column-title">Vendre sur Alibaba</span>
                    <a href="#" class="footer-link"><i class="fas fa-store"></i> Fournisseurs</a>
                    <a href="#" class="footer-link"><i class="fas fa-chart-line"></i> Centre de vendeurs</a>
                    <a href="#" class="footer-link"><i class="fas fa-graduation-cap"></i> Formation vendeurs</a>
                    <a href="#" class="footer-link"><i class="fas fa-shield-alt"></i> Protection du vendeur</a>
                </div>
                
                <div class="footer-column">
                    <span class="footer-column-title">À propos d'Alibaba</span>
                    <a href="#" class="footer-link"><i class="fas fa-info-circle"></i> À propos de nous</a>
                    <a href="#" class="footer-link"><i class="fas fa-newspaper"></i> Actualités</a>
                    <a href="#" class="footer-link"><i class="fas fa-briefcase"></i> Carrières</a>
                    <a href="#" class="footer-link"><i class="fas fa-building"></i> Relations investisseurs</a>
                </div>
                
                <div class="footer-column">
                    <span class="footer-column-title">Services</span>
                    <a href="#" class="footer-link"><i class="fas fa-box"></i> Logistique</a>
                    <a href="#" class="footer-link"><i class="fas fa-search"></i> Services d'inspection</a>
                    <a href="#" class="footer-link"><i class="fas fa-language"></i> Services de traduction</a>
                    <a href="#" class="footer-link"><i class="fas fa-handshake"></i> Services d'agent</a>
                </div>
                
                <div class="footer-column">
                    <span class="footer-column-title">Contactez-nous</span>
                    <a href="#" class="footer-link"><i class="fas fa-phone-alt"></i> Service client</a>
                    <a href="#" class="footer-link"><i class="fas fa-envelope"></i> Email</a>
                    <a href="#" class="footer-link"><i class="fas fa-comment-dots"></i> Chat en direct</a>
                    <a href="#" class="footer-link"><i class="fas fa-map-marker-alt"></i> Localisation</a>
                    
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <span class="footer-column-title">Applications mobiles</span>
                    <a href="#" class="footer-link"><i class="fab fa-apple"></i> App Store</a>
                    <a href="#" class="footer-link"><i class="fab fa-google-play"></i> Google Play</a>
                    <a href="#" class="footer-link"><i class="fas fa-qrcode"></i> Scanner le QR Code</a>
                    
                    <div class="payment-methods">
                        <i class="fab fa-cc-visa payment-method"></i>
                        <i class="fab fa-cc-mastercard payment-method"></i>
                        <i class="fab fa-cc-paypal payment-method"></i>
                        <i class="fab fa-cc-amex payment-method"></i>
                        <i class="fab fa-cc-discover payment-method"></i>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>© 2025 Alibaba.com. Tous droits réservés. 
                <a href="#" style="color: #aaa; margin: 0 10px;">Confidentialité</a> 
                <a href="#" style="color: #aaa; margin: 0 10px;">Conditions d'utilisation</a> 
                <a href="#" style="color: #aaa; margin: 0 10px;">Informations légales</a></p>
            </div>
        </div>
    </footer>
</body>
</html>