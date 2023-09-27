.class Lcom/google/android/material/timepicker/TimePickerClockPresenter;
.super Ljava/lang/Object;
.source "TimePickerClockPresenter.java"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
.implements Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;
.implements Lcom/google/android/material/timepicker/TimePickerPresenter;


# static fields
.field private static final DEGREES_PER_HOUR:I = 0x1e

.field private static final DEGREES_PER_MINUTE:I = 0x6

.field private static final HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

.field private static final HOUR_CLOCK_VALUES:[Ljava/lang/String;

.field private static final MINUTE_CLOCK_VALUES:[Ljava/lang/String;


# instance fields
.field private broadcasting:Z

.field private hourRotation:F

.field private minuteRotation:F

.field private time:Lcom/google/android/material/timepicker/TimeModel;

.field private timePickerView:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 47
    const-string v0, "12"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "10"

    const-string v11, "11"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    .line 50
    const-string v1, "00"

    const-string v2, "2"

    const-string v3, "4"

    const-string v4, "6"

    const-string v5, "8"

    const-string v6, "10"

    const-string v7, "12"

    const-string v8, "14"

    const-string v9, "16"

    const-string v10, "18"

    const-string v11, "20"

    const-string v12, "22"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

    .line 53
    const-string v1, "00"

    const-string v2, "5"

    const-string v3, "10"

    const-string v4, "15"

    const-string v5, "20"

    const-string v6, "25"

    const-string v7, "30"

    const-string v8, "35"

    const-string v9, "40"

    const-string v10, "45"

    const-string v11, "50"

    const-string v12, "55"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 1
    .param p1, "timePickerView"    # Lcom/google/android/material/timepicker/TimePickerView;
    .param p2, "time"    # Lcom/google/android/material/timepicker/TimeModel;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    .line 67
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 68
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->initialize()V

    .line 70
    return-void
.end method

.method private getDegreesPerHour()I
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    return v0
.end method

.method private getHourClockValues()[Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private performHapticFeedback(II)V
    .locals 2
    .param p1, "prevHour"    # I
    .param p2, "prevMinute"    # I

    .line 140
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-eq v0, p1, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x4

    .line 142
    .local v0, "feedbackKey":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->performHapticFeedback(I)Z

    .line 144
    .end local v0    # "feedbackKey":I
    :cond_1
    return-void
.end method

.method private updateTime()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->period:I

    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->updateTime(III)V

    .line 206
    return-void
.end method

.method private updateValues()V
    .locals 2

    .line 210
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    const-string v1, "%d"

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues([Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues([Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    const-string v1, "%02d"

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues([Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private updateValues([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {v1, v2, p2}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    .line 103
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerView;->showToggle()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnSelectionChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnPeriodChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues()V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->invalidate()V

    .line 84
    return-void
.end method

.method public invalidate()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v0

    .line 89
    .local v0, "hourForDisplay":I
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getDegreesPerHour()I

    move-result v1

    mul-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    .line 90
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    .line 91
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    .line 92
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    .line 93
    return-void
.end method

.method public onActionUp(FZ)V
    .locals 7
    .param p1, "rotation"    # F
    .param p2, "moveInEventStream"    # Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    .line 175
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 176
    .local v1, "prevMinute":I
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 177
    .local v2, "prevHour":I
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 180
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    .line 183
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 184
    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 185
    .local v3, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    .line 186
    .local v4, "isExploreByTouchEnabled":Z
    if-nez v4, :cond_0

    .line 187
    const/16 v6, 0xc

    invoke-virtual {p0, v6, v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    .line 189
    .end local v3    # "am":Landroid/view/accessibility/AccessibilityManager;
    .end local v4    # "isExploreByTouchEnabled":Z
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 191
    .local v0, "rotationInt":I
    if-nez p2, :cond_2

    .line 193
    add-int/lit8 v3, v0, 0xf

    div-int/lit8 v3, v3, 0x1e

    .line 194
    .local v3, "newRotation":I
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    mul-int/lit8 v6, v3, 0x5

    invoke-virtual {v4, v6}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 195
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v4, v4, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    .line 197
    .end local v3    # "newRotation":I
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    invoke-virtual {v3, v4, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    .line 199
    .end local v0    # "rotationInt":I
    :goto_0
    iput-boolean v5, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    .line 200
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    .line 201
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->performHapticFeedback(II)V

    .line 202
    return-void
.end method

.method public onPeriodChange(I)V
    .locals 1
    .param p1, "period"    # I

    .line 153
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setPeriod(I)V

    .line 154
    return-void
.end method

.method public onRotate(FZ)V
    .locals 7
    .param p1, "rotation"    # F
    .param p2, "animating"    # Z

    .line 115
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 120
    .local v0, "prevHour":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 121
    .local v1, "prevMinute":I
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 122
    .local v2, "rotationInt":I
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 123
    const/4 v3, 0x3

    .line 124
    .local v3, "minuteOffset":I
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x6

    invoke-virtual {v4, v5}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 125
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v4, v4, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 v4, v4, 0x6

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    .line 126
    .end local v3    # "minuteOffset":I
    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getDegreesPerHour()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 128
    .local v3, "hourOffset":I
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    add-int v5, v2, v3

    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getDegreesPerHour()I

    move-result v6

    div-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    .line 129
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v4}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v4

    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getDegreesPerHour()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    .line 133
    .end local v3    # "hourOffset":I
    :goto_0
    if-nez p2, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    .line 135
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->performHapticFeedback(II)V

    .line 137
    :cond_2
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 1
    .param p1, "selection"    # I

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    .line 149
    return-void
.end method

.method setSelection(IZ)V
    .locals 5
    .param p1, "selection"    # I
    .param p2, "animate"    # Z

    .line 157
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "isMinute":Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->setAnimateOnTouchUp(Z)V

    .line 160
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 161
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getHourClockValues()[Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_2

    sget v3, Lcom/google/android/material/R$string;->material_minute_suffix:I

    goto :goto_2

    :cond_2
    sget v3, Lcom/google/android/material/R$string;->material_hour_suffix:I

    .line 161
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->setValues([Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    :goto_3
    invoke-virtual {v1, v2, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    .line 165
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, p1}, Lcom/google/android/material/timepicker/TimePickerView;->setActiveSelection(I)V

    .line 166
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance v2, Lcom/google/android/material/timepicker/ClickActionDelegate;

    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 167
    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    .line 166
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/TimePickerView;->setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance v2, Lcom/google/android/material/timepicker/ClickActionDelegate;

    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 169
    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/TimePickerView;->setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 170
    return-void
.end method

.method public show()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    .line 98
    return-void
.end method
