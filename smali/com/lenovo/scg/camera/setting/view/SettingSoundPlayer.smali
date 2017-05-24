.class public Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;
.super Ljava/lang/Object;
.source "SettingSoundPlayer.java"


# static fields
.field public static SOUND_FILE:I

.field private static UNKNOW:I

.field private static mSettingSoundPlayer:Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;


# instance fields
.field private mSoundPool:Landroid/media/SoundPool;

.field private soundID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f080007

    sput v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->SOUND_FILE:I

    .line 22
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->UNKNOW:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSettingSoundPlayer:Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 23
    sget v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->UNKNOW:I

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->soundID:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSettingSoundPlayer:Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSettingSoundPlayer:Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    .line 32
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSettingSoundPlayer:Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public initSettingSoundPlayer(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->SOUND_FILE:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->soundID:I

    .line 42
    return-void
.end method

.method public play()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->soundID:I

    sget v1, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->UNKNOW:I

    if-ne v0, v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->soundID:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 58
    const/4 v0, 0x1

    const-string v1, "SettingSoundPlayer play sound!"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public uninitSettingSoundPlayer()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->soundID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0
.end method
