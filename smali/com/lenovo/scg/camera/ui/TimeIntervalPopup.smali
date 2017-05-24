.class public Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;
.super Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;
.source "TimeIntervalPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeIntervalPopup"


# instance fields
.field private mConfirmButton:Landroid/widget/Button;

.field private final mDurations:[Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mListener:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;

.field private mNumberSpinner:Landroid/widget/NumberPicker;

.field private mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

.field private mTimeLapseSwitch:Landroid/widget/Switch;

.field private mTimePicker:Landroid/view/View;

.field private mUnitSpinner:Landroid/widget/NumberPicker;

.field private final mUnits:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    .line 75
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->updateInputState()V

    return-void
.end method

.method private restoreSetting()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 124
    .local v1, "index":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 125
    const-string v4, "TimeIntervalPopup"

    const-string v5, "Invalid preference value."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->print()V

    .line 127
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 128
    :cond_0
    if-nez v1, :cond_1

    .line 130
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->setTimeSelectionEnabled(Z)V

    .line 135
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 136
    .local v0, "durationCount":I
    add-int/lit8 v4, v1, -0x1

    div-int v3, v4, v0

    .line 137
    .local v3, "unit":I
    add-int/lit8 v4, v1, -0x1

    rem-int v2, v4, v0

    .line 138
    .local v2, "number":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 139
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 167
    .local v0, "newId":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValueIndex(I)V

    .line 172
    .end local v0    # "newId":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mListener:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mListener:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;->onListPrefChanged(Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;)V

    .line 175
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->setValueIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public initialize(Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;)V
    .locals 5
    .param p1, "preference"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .prologue
    const/high16 v4, 0x60000

    const/4 v3, 0x0

    .line 79
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    .line 82
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mPreference:Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    array-length v0, v1

    .line 86
    .local v0, "durationCount":I
    const v1, 0x7f1003f4

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 88
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mDurations:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 93
    const v1, 0x7f100980

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    .line 94
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 96
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnits:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 99
    const v1, 0x7f10097f

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    .line 100
    const v1, 0x7f100981

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    .line 101
    const v1, 0x7f100982

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f100983

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    .line 105
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mNumberSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 106
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mUnitSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 108
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTimeLapseSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$1;-><init>(Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mConfirmButton:Landroid/widget/Button;

    new-instance v2, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$2;-><init>(Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public setSettingChangedListener(Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mListener:Lcom/lenovo/scg/camera/ui/TimeIntervalPopup$Listener;

    .line 68
    return-void
.end method

.method protected setTimeSelectionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 156
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mHelpText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->mTimePicker:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v2, v1

    .line 157
    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/TimeIntervalPopup;->restoreSetting()V

    .line 152
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 153
    return-void
.end method
