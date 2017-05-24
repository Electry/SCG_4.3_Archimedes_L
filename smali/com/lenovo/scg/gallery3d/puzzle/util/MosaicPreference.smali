.class public Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;
.super Ljava/lang/Object;
.source "MosaicPreference.java"


# static fields
.field private static final DEFAULT_FREEDOM_MOSAIC_BACKGROUND_INDEX:I = 0x0

.field private static final DEFAULT_FREEDOM_MOSAIC_BACKGROUND_RES:I = 0x106000b

.field private static final DEFAULT_JOINT_MOSAIC_BACKGROUND_INDEX:I = 0x0

.field private static final DEFAULT_JOINT_MOSAIC_BACKGROUND_RES:I = 0x106000b

.field private static final DEFAULT_MODE_INDEX:I = 0x0

.field private static final DEFAULT_TEMPLATE_MOSAIC_FRAME_INDEX:I = 0x0

.field private static final DEFAULT_TEMPLATE_MOSAIC_FRAME_RES:I = 0x106000b

.field public static final KEY_FREEDOM_MOSAIC_BACKGROUND_INDEX:Ljava/lang/String; = "freedomMosaicFrameIndex"

.field public static final KEY_FREEDOM_MOSAIC_BACKGROUND_RES:Ljava/lang/String; = "freedomMosaicFrameRes"

.field public static final KEY_JOINT_MOSAIC_BACKGROUND_INDEX:Ljava/lang/String; = "jointMosaicFrameIndex"

.field public static final KEY_JOINT_MOSAIC_BACKGROUND_RES:Ljava/lang/String; = "jointMosaicFrameRes"

.field public static final KEY_LAST_MOASIC_MODE:Ljava/lang/String; = "lastMoasicMode"

.field public static final KEY_TEMPLATE_MOSAIC_FRAME_INDEX:Ljava/lang/String; = "templateMosaicFrameIndex"

.field public static final KEY_TEMPLATE_MOSAIC_FRAME_RES:Ljava/lang/String; = "templateMosaicFrameRes"

.field private static final MOSAIC_PREFS:Ljava/lang/String; = "MosaicPrefs"

.field private static mMosaicPreferencesInstance:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mMosaicPreferencesInstance:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 59
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "MosaicPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v1, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mMosaicPreferencesInstance:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mMosaicPreferencesInstance:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;

    .line 55
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mMosaicPreferencesInstance:Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getFreedomMosaicBackgroundIndex()I
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "freedomMosaicFrameIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFreedomMosaicBackgroundRes()I
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "freedomMosaicFrameRes"

    const v2, 0x106000b

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getJointMosaicFrameIndex()I
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "jointMosaicFrameIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getJointMosaicFrameRes()I
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "jointMosaicFrameRes"

    const v2, 0x106000b

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastMosaicMode()Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    .locals 5

    .prologue
    .line 72
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 73
    .local v1, "mosaicMode":Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "lastMoasicMode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 85
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 88
    :goto_0
    return-object v1

    .line 76
    :pswitch_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->TEMPLATE_MDOE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->FREEDOM_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;->JOINT_MODE:Lcom/lenovo/scg/gallery3d/puzzle/mosaic/PhotoMosaic$MosaicMode;

    .line 83
    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTempalteMosaicFrameIndex()I
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "templateMosaicFrameIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTempalteMosaicFrameRes()I
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "templateMosaicFrameRes"

    const v2, 0x106000b

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setFreedomMosaicBackgroundIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "freedomMosaicFrameIndex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public setFreedomMosaicBackgroundRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "freedomMosaicFrameRes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method

.method public setJointMosaicFrameIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "jointMosaicFrameIndex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method

.method public setJointMosaicFrameRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "jointMosaicFrameRes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public setLastMosaicMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "lastMoasicMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public setTemplateMosaicFrameIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 92
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "templateMosaicFrameIndex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public setTemplateMosaicFrameRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/util/MosaicPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "templateMosaicFrameRes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method
