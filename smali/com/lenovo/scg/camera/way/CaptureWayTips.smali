.class public Lcom/lenovo/scg/camera/way/CaptureWayTips;
.super Ljava/lang/Object;
.source "CaptureWayTips.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureWayTips"

.field private static mCaptureWayTips:Lcom/lenovo/scg/camera/way/CaptureWayTips;


# instance fields
.field private isSettingUiRemoveShowTips:Z

.field private mOrientation:I

.field private mTip:Lcom/lenovo/scg/common/ui/RotateTips;

.field private onSettingUiRemoveShowTipsId:I

.field private tips:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayTips;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/CaptureWayTips;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mCaptureWayTips:Lcom/lenovo/scg/camera/way/CaptureWayTips;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mOrientation:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 24
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->isSettingUiRemoveShowTips:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->onSettingUiRemoveShowTipsId:I

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->tips:[I

    .line 36
    return-void

    .line 26
    nop

    :array_0
    .array-data 4
        -0x1
        0x7f0f003f
        -0x2
        0x7f0f0040
        0x7f0f0041
    .end array-data
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mCaptureWayTips:Lcom/lenovo/scg/camera/way/CaptureWayTips;

    return-object v0
.end method

.method public static getVoiceTipsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0f0040

    .line 110
    invoke-static {p0}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->isA_LA_BO(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    :goto_0
    return-object v3

    .line 113
    :cond_0
    const/4 v1, 0x0

    .line 114
    .local v1, "keyWordA":Ljava/lang/String;
    const/4 v0, 0x0

    .line 115
    .local v0, "KeyWordB":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    const-string v1, "Snap"

    .line 117
    const-string v0, "Cheese"

    .line 122
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "sAgeFormat1":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 119
    .end local v2    # "sAgeFormat1":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "\u8304\u5b50"

    .line 120
    const-string/jumbo v0, "\u62cd\u7167"

    goto :goto_1
.end method

.method private static isA_LA_BO(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 128
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "language":Ljava/lang/String;
    const-string v2, "CaptureWayTips"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isA_LA_BO: language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x1

    .line 133
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "CaptureWayTips"

    const-string v1, "destory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 107
    return-void
.end method

.method public onCameraOpened(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string v1, "CaptureWayTips"

    const-string/jumbo v2, "onCameraOpened()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "camera_setting_takepicture_type_key"

    const-string v2, "0"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "value":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    invoke-virtual {v1, p2}, Lcom/lenovo/scg/camera/way/TimerUI;->showLevelUI(Landroid/app/Activity;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onSettingUiRemove(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v0, "CaptureWayTips"

    const-string/jumbo v1, "onSettingUiRemove()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->isSettingUiRemoveShowTips:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->isSettingUiRemoveShowTips:Z

    .line 90
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->onSettingUiRemoveShowTipsId:I

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->showTips(Landroid/content/Context;I)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->onSettingUiRemoveShowTipsId:I

    .line 93
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mOrientation:I

    .line 44
    return-void
.end method

.method public showTips(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pos"    # I

    .prologue
    .line 47
    const-string v1, "CaptureWayTips"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showTips(): pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->tips:[I

    array-length v1, v1

    if-gt v1, p2, :cond_0

    .line 49
    const-string v1, "CaptureWayTips"

    const-string/jumbo v2, "showTips(): tips.length <= pos && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 52
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->tips:[I

    aget v1, v1, p2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 53
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/way/TimerUI;->showLevelUI(Landroid/app/Activity;)V

    goto :goto_0

    .line 56
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->removeLevelUI()V

    .line 59
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->tips:[I

    aget v1, v1, p2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 60
    const-string v1, "CaptureWayTips"

    const-string/jumbo v2, "showTips(): tips[pos] == -1 && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    if-nez v1, :cond_3

    .line 66
    new-instance v2, Lcom/lenovo/scg/common/ui/RotateTips;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const v3, 0x7f10015a

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mOrientation:I

    const/4 v4, 0x1

    invoke-direct {v2, p1, v1, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v2, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->tips:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "tipsString":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->tips:[I

    aget v1, v1, p2

    const v2, 0x7f0f0040

    if-ne v1, v2, :cond_4

    .line 73
    invoke-static {p1}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getVoiceTipsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    const/16 v2, 0x5dc

    iget v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->mOrientation:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public shwoTipsAfterSettingUiRemove(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 81
    const-string v0, "CaptureWayTips"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shwoTipsAfterSettingUiRemove(): pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->onSettingUiRemoveShowTipsId:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayTips;->isSettingUiRemoveShowTips:Z

    .line 84
    return-void
.end method
