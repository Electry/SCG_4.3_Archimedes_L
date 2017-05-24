.class public Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;
.super Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;
.source "CountdownTimerPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimerSettingPopup"


# instance fields
.field private mBeep:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDurations:[Ljava/lang/String;

.field private mListener:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;

.field private mNumberSpinner:Landroid/widget/NumberPicker;

.field private mPickerTitle:Landroid/view/View;

.field private mSoundTitle:Landroid/view/View;

.field private mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

.field private mTimerSound:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->updateInputState()V

    return-void
.end method

.method private restoreSetting()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 117
    const-string v2, "TimerSettingPopup"

    const-string v3, "Invalid preference value."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->print()V

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 121
    :cond_0
    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->setTimeSelectionEnabled(Z)V

    .line 122
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 124
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mBeep:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mBeep:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 125
    .local v0, "checked":Z
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    return-void

    .end local v0    # "checked":Z
    :cond_1
    move v2, v4

    .line 121
    goto :goto_0

    :cond_2
    move v0, v4

    .line 124
    goto :goto_1
.end method

.method private updateInputState()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValueIndex(I)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mBeep:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValueIndex(I)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mListener:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mListener:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;->onListPrefChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mListener:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mBeep:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;->onListPrefChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 157
    :cond_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V
    .locals 9
    .param p1, "timer"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    .param p2, "beep"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .prologue
    const/4 v8, 0x0

    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .line 74
    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mBeep:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    .line 76
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimer:Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 80
    .local v1, "entries":[Ljava/lang/CharSequence;
    array-length v4, v1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 82
    .local v3, "locale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f04e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 83
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v1, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    array-length v0, v4

    .line 86
    .local v0, "durationCount":I
    const v4, 0x7f1003f4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    .line 87
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 88
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 89
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 91
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    new-instance v5, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$1;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$1;-><init>(Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 98
    const v4, 0x7f1003f8

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mConfirmButton:Landroid/widget/Button;

    .line 99
    const v4, 0x7f1003f3

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mPickerTitle:Landroid/view/View;

    .line 102
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    const/high16 v5, 0x60000

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 104
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mConfirmButton:Landroid/widget/Button;

    new-instance v5, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$2;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$2;-><init>(Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v4, 0x7f1003f7

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    .line 111
    const v4, 0x7f1003f6

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mSoundTitle:Landroid/view/View;

    .line 112
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public setSettingChangedListener(Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mListener:Lcom/lenovo/scg/camera/ui/CountdownTimerPopup$Listener;

    .line 66
    return-void
.end method

.method protected setTimeSelectionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mPickerTitle:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mTimerSound:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->mSoundTitle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CountdownTimerPopup;->restoreSetting()V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 138
    return-void
.end method
