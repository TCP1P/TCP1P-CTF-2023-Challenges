.class public Lcom/google/android/material/color/DynamicColors;
.super Ljava/lang/Object;
.source "DynamicColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;,
        Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;,
        Lcom/google/android/material/color/DynamicColors$Precondition;
    }
.end annotation


# static fields
.field private static final ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private static final DEFAULT_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

.field private static final DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

.field private static final SAMSUNG_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

.field private static final USE_DEFAULT_THEME_OVERLAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/material/R$attr;->dynamicColorThemeOverlay:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    .line 47
    new-instance v0, Lcom/google/android/material/color/DynamicColors$1;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColors$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DEFAULT_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 56
    new-instance v1, Lcom/google/android/material/color/DynamicColors$2;

    invoke-direct {v1}, Lcom/google/android/material/color/DynamicColors$2;-><init>()V

    sput-object v1, Lcom/google/android/material/color/DynamicColors;->SAMSUNG_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 78
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v2, "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    const-string v3, "oppo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v3, "realme"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v3, "oneplus"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v3, "vivo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v3, "xiaomi"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v3, "motorola"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v3, "itel"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v3, "tecno mobile limited"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "infinix mobility limited"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v3, "hmd global"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v3, "sharp"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string/jumbo v3, "sony"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v3, "tcl"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v3, "lenovo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "lge"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v3, "google"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v3, "robolectric"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v3, "samsung"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;

    .line 103
    .end local v2    # "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v1, "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    const-string v2, "asus"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, "jio"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;

    .line 111
    .end local v1    # "deviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;>;"
    new-instance v0, Lcom/google/android/material/color/DynamicColors$3;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColors$3;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColors;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 43
    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;I)V

    .line 201
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "theme"    # I

    .line 210
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    invoke-static {p0, p1, v0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 211
    return-void
.end method

.method private static applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "theme"    # I
    .param p2, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 227
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    if-nez p1, :cond_1

    .line 231
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    move-result p1

    .line 233
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p2, p0, p1}, Lcom/google/android/material/color/DynamicColors$Precondition;->shouldApplyDynamicColors(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 236
    :cond_2
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 222
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 223
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .line 130
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;I)V

    .line 131
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;I)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "theme"    # I

    .line 145
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    invoke-static {p0, p1, v0}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 146
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "theme"    # I
    .param p2, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 189
    new-instance v0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;-><init>(ILcom/google/android/material/color/DynamicColors$Precondition;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 191
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 161
    return-void
.end method

.method private static getDefaultThemeOverlay(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 292
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    .line 293
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    .local v0, "dynamicColorAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 295
    .local v1, "theme":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    return v1
.end method

.method public static isDynamicColorAvailable()Z
    .locals 4

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 281
    return v2

    .line 283
    :cond_0
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 285
    .local v0, "deviceSupportCondition":Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;
    if-nez v0, :cond_1

    .line 286
    sget-object v1, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    .line 288
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "originalContext"    # Landroid/content/Context;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;
    .locals 1
    .param p0, "originalContext"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .line 265
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return-object p0

    .line 268
    :cond_0
    if-nez p1, :cond_1

    .line 269
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    move-result p1

    .line 271
    :cond_1
    if-nez p1, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0
.end method
