.class public Lcom/lenovo/scg/camera/focus/FocusGroupSelector;
.super Ljava/lang/Object;
.source "FocusGroupSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/focus/FocusGroupSelector$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusGroupSelector"

.field private static mSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;


# instance fields
.field private mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->mSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getGroup4Mode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;I)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .locals 4
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "funtionui"    # I

    .prologue
    .line 242
    if-nez p2, :cond_1

    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 244
    .local v0, "group":Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    :goto_0
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupSelector$1;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 295
    :cond_0
    :goto_1
    const-string v1, "FocusGroupSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroup4Mode, mode  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v1, "FocusGroupSelector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroup4Mode, group  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v0

    .line 242
    .end local v0    # "group":Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    goto :goto_0

    .line 251
    .restart local v0    # "group":Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    :pswitch_0
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Multi_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 252
    goto :goto_1

    .line 258
    :pswitch_1
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 259
    goto :goto_1

    .line 266
    :pswitch_2
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 267
    goto :goto_1

    .line 272
    :pswitch_3
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 273
    goto :goto_1

    .line 284
    :pswitch_4
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isTouchWayOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const-string v1, "FocusGroupSelector"

    const-string v2, "getCurrentFocusGroup, is TouchPhoto!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupSelector;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->mSelector:Lcom/lenovo/scg/camera/focus/FocusGroupSelector;

    return-object v0
.end method

.method private getSettingsPreferences(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultvalue"    # I

    .prologue
    .line 141
    const-string v4, "FocusGroupSelector"

    const-string v5, "getSettingsPreferences()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    move v1, p2

    .line 144
    .local v1, "focus":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    if-nez v4, :cond_0

    .line 145
    const-string v4, "FocusGroupSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSettingsPreferences() mComboSharedPreferences == null && return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 160
    .end local v1    # "focus":I
    .local v2, "focus":I
    :goto_0
    return v2

    .line 148
    .end local v2    # "focus":I
    .restart local v1    # "focus":I
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "focusStr":Ljava/lang/String;
    const-string v4, "FocusGroupSelector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSettingsPreferences, focusStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz v3, :cond_1

    .line 154
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    .line 160
    .end local v1    # "focus":I
    .restart local v2    # "focus":I
    goto :goto_0

    .line 155
    .end local v2    # "focus":I
    .restart local v1    # "focus":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private isMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z
    .locals 5
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const/4 v1, 0x0

    .line 185
    const-string v2, "FocusGroupSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-nez p1, :cond_1

    .line 188
    const-string v2, "FocusGroupSelector"

    const-string v3, "isMode(): mode == null && return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 191
    :cond_1
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v2, :cond_3

    .line 192
    :cond_2
    const-string v2, "FocusGroupSelector"

    const-string v3, "isMode(): mode is Front Camera && return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v0

    .line 198
    .local v0, "modeOrd":I
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private transPhotoFocusGroup(I)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .locals 3
    .param p1, "photo_focus"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 206
    .local v0, "group":Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    packed-switch p1, :pswitch_data_0

    .line 224
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 225
    const-string v1, "FocusGroupSelector"

    const-string v2, "getSettingsPreferencesForPhoto, Error focus group!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 209
    goto :goto_0

    .line 212
    :pswitch_1
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Auto:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 213
    goto :goto_0

    .line 216
    :pswitch_2
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 217
    goto :goto_0

    .line 220
    :pswitch_3
    sget-object v0, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 221
    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getGroup()Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 45
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 55
    .local v1, "group":Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v3

    .line 57
    .local v3, "isVideo":Z
    const-string v5, "FocusGroupSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentFocusGroup, isVideo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    const-string v5, "FocusGroupSelector"

    const-string/jumbo v6, "updateCurrentFocusGroup, is 3rd"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-nez v3, :cond_1

    .line 64
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is photo"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Simple:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    .line 132
    :cond_0
    :goto_0
    const-string v5, "FocusGroupSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGroup, group="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v1

    .line 67
    :cond_1
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is video"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    goto :goto_0

    .line 74
    :cond_2
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is not 3rd"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    .line 77
    .local v0, "funtionui":I
    const-string v5, "FocusGroupSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentFocusGroup, funtionui = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v3, :cond_5

    .line 80
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, isVideo"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-nez v0, :cond_3

    .line 82
    const-string v5, "FocusGroupSelector"

    const-string/jumbo v6, "updateCurrentFocusGroup, is auto"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    goto :goto_0

    .line 84
    :cond_3
    if-ne v0, v8, :cond_0

    .line 85
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is pro"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->isVideoSmartFocusGroup()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    :goto_1
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Video_Infinity:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    goto :goto_1

    .line 93
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v4

    .line 94
    .local v4, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    const-string v5, "FocusGroupSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentFocusGroup, mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->isMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v2

    .line 97
    .local v2, "isMode":Z
    const-string v5, "FocusGroupSelector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentFocusGroup, isMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-eqz v2, :cond_6

    .line 101
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is a Mode!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, v4, v0}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->getGroup4Mode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;I)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    move-result-object v1

    goto/16 :goto_0

    .line 105
    :cond_6
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is not a Mode!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isTouchWayOn()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 108
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is TouchPhoto!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Touch_Photo:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    goto/16 :goto_0

    .line 112
    :cond_7
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, is not TouchPhoto!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-nez v0, :cond_8

    .line 114
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, FunctionUI is auto"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v1, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Smart:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    goto/16 :goto_0

    .line 117
    :cond_8
    if-ne v0, v8, :cond_9

    .line 118
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, FunctionUI is pro"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v5, "camera_setting_focus_type_key"

    sget-object v6, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->ordinal()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->getSettingsPreferences(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->transPhotoFocusGroup(I)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    move-result-object v1

    goto/16 :goto_0

    .line 123
    :cond_9
    const-string v5, "FocusGroupSelector"

    const-string v6, "getCurrentFocusGroup, FunctionUI is unknow!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v5, "camera_setting_focus_type_key"

    sget-object v6, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->Pro:Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;->ordinal()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->getSettingsPreferences(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->transPhotoFocusGroup(I)Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public isVideoSmartFocusGroup()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 165
    const-string v2, "FocusGroupSelector"

    const-string v3, "isVideoSmartFocusGroup()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    if-nez v2, :cond_0

    .line 167
    const-string v1, "FocusGroupSelector"

    const-string v2, "isVideoSmartFocusGroup(): mComboSharedPreferences == null && return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return v0

    .line 170
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string/jumbo v2, "off"

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    const-string v4, "camera_setting_video_focus_type_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v1, "FocusGroupSelector"

    const-string/jumbo v2, "wangsm3 Video focus mode Inifinity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_1
    const-string v0, "FocusGroupSelector"

    const-string v2, "Video focus mode Smart"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 180
    goto :goto_0
.end method

.method public setComboSharedPreferences(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)V
    .locals 0
    .param p1, "comboSharedPreferences"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/FocusGroupSelector;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .line 138
    return-void
.end method
