# 🍳 ChefHelper

ChefHelper 是一款智慧料理小助手 App，協助使用者透過「掃描器」與「食材輸入」功能，自動生成一份專屬的食譜建議，讓烹飪變得快速又有趣！

## 📱 主要功能

- 🔍 **輸入設備與食材**  
  使用者可手動或掃描方式輸入烹飪設備與食材資訊。

- 🍽 **智慧生成食譜**  
  根據設備與食材，自動呼叫 API 回傳菜名、描述與詳細步驟。

- 👥 **人數設定區塊**  
  可設定用餐人數，日後擴充比例計算等功能。

- 🧾 **食譜展示頁**  
  使用 sheet 呈現產出的菜餚資訊與製作步驟。

NextStep
ChefHelper/
├── App/
│   └── AppCoordinator.swift            # Handles root flow (auth vs main)
│   └── NavigationCoordinator.swift     # Tab + modal navigation logic
│
├── Features/
│   ├── Onboarding/
│   │   ├── OnboardingView.swift
│   │   ├── LoginViewModel.swift
│   │   └── AuthService.swift
│   │
│   ├── Home/
│   │   ├── HomeView.swift
│   │   ├── HomeViewModel.swift
│   │   └── RecommendationService.swift
│   │
│   ├── Scanning/
│   │   ├── ScannerView.swift
│   │   ├── ScannerViewModel.swift
│   │   └── ARService.swift
│   │
│   ├── Cooking/
│   │   ├── CookingARView.swift
│   │   ├── CookingARViewModel.swift
│   │   └── ARObjectHandler.swift
│   │
│   ├── Recipe/
│   │   ├── RecipeView.swift
│   │   ├── RecipeViewModel.swift
│   │   └── RecipeAIService.swift
│   │
│   ├── History/
│   │   ├── HistoryView.swift
│   │   ├── HistoryViewModel.swift
│   │   └── HistoryPersistence.swift
│   │
│   ├── Community/
│   │   ├── CommunityView.swift
│   │   ├── PostViewModel.swift
│   │   └── CommentService.swift
│   │
│   └── Settings/
│       ├── SettingsView.swift
│       ├── SettingsViewModel.swift
│       └── UserPreferencesService.swift
│
├── Shared/
│   ├── Models/
│   ├── Utilities/
│   ├── Extensions/
│   └── Components/ 
