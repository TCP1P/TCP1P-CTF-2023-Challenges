.class Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "DynamicColors.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicColorsActivityLifecycleCallbacks"
.end annotation


# instance fields
.field private final dynamicColorThemeOverlay:I

.field private final precondition:Lcom/google/android/material/color/DynamicColors$Precondition;


# direct methods
.method constructor <init>(ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .locals 0
    .param p1, "theme"    # I
    .param p2, "condition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput p1, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorThemeOverlay:I

    .line 318
    iput-object p2, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 319
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 329
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 347
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 338
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 324
    iget v0, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorThemeOverlay:I

    iget-object v1, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/DynamicColors;->access$000(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$Precondition;)V

    .line 325
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 335
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 344
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 332
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 341
    return-void
.end method
