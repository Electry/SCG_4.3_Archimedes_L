.class public Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;
.super Ljava/lang/Object;
.source "SoundPlayerAssistant.java"


# static fields
.field public static final MAX_SOUND_NUMBER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SoundPlayerAssistant"

.field public static final TYPE_COUNTER_END:I = 0x1

.field public static final TYPE_COUNTER_START:I

.field private static mSoundPlayerAssistant:Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;

.field private static final soundResource:[I


# instance fields
.field private mSoundPool:Landroid/media/SoundPool;

.field private soundsId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPlayerAssistant:Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->soundResource:[I

    return-void

    :array_0
    .array-data 4
        0x7f080006
        0x7f080005
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->soundsId:[I

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPlayerAssistant:Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;

    return-object v0
.end method

.method private loadSounds(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->soundsId:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    sget-object v3, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->soundResource:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method private unloadSounds()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->soundsId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v0, "SoundPlayerAssistant"

    const-string v1, " init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->loadSounds(Landroid/content/Context;)V

    .line 53
    const-string v0, "SoundPlayerAssistant"

    const-string v1, " application init(create and load sounds) self capture remind soundpool !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    const-string v0, "SoundPlayerAssistant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play(): id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->soundsId:[I

    aget v7, v0, p1

    .line 44
    .local v7, "soundId":I
    const-string v0, "SoundPlayerAssistant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "play(): soundId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->soundsId:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public uninit()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "SoundPlayerAssistant"

    const-string v1, " uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->unloadSounds()V

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->mSoundPool:Landroid/media/SoundPool;

    .line 69
    :cond_0
    return-void
.end method
