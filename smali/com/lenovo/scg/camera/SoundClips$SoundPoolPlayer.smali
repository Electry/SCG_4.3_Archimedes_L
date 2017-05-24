.class Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Lcom/lenovo/scg/camera/SoundClips$Player;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPoolPlayer"
.end annotation


# static fields
.field private static final ID_NOT_LOADED:I = 0x0

.field private static final NUM_SOUND_STREAMS:I = 0x1

.field private static final SOUND_RES:[I

.field private static final TAG:Ljava/lang/String; = "SoundPoolPlayer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSoundIDReady:[Z

.field private mSoundIDToPlay:I

.field private final mSoundIDs:[I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSoundRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080009
        0x7f080018
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    .line 138
    iput-object p1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    .line 140
    iput v5, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 142
    new-instance v1, Landroid/media/SoundPool;

    invoke-static {}, Lcom/lenovo/scg/camera/SoundClips;->getAudioTypeForSoundPool()I

    move-result v2

    invoke-direct {v1, v6, v2, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 145
    sget-object v1, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    .line 146
    sget-object v1, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    aget v4, v4, v0

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v0

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aput-boolean v5, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void

    .line 121
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "pool"    # Landroid/media/SoundPool;
    .param p2, "soundID"    # I
    .param p3, "status"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 183
    if-eqz p3, :cond_2

    .line 184
    const-string v0, "SoundPoolPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading sound tracks failed (status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_1

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aput v4, v0, v7

    .line 205
    :cond_0
    :goto_1
    return-void

    .line 185
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 194
    .end local v7    # "i":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_4

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v7

    .line 201
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    if-ne p2, v0, :cond_0

    .line 202
    iput v4, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 194
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public declared-synchronized play(I)V
    .locals 8
    .param p1, "action"    # I

    .prologue
    .line 163
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 164
    :cond_0
    const-string v0, "SoundPoolPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource ID not found for action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in play()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundRes:[I

    aget v7, v0, p1

    .line 169
    .local v7, "index":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    iget-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->SOUND_RES:[I

    aget v3, v3, v7

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v7

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v7    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    .restart local v7    # "index":I
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDReady:[Z

    aget-boolean v0, v0, v7

    if-nez v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDToPlay:I

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundIDs:[I

    aget v1, v1, v7

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
