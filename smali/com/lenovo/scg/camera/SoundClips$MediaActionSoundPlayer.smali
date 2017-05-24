.class Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;
.super Ljava/lang/Object;
.source "SoundClips.java"

# interfaces
.implements Lcom/lenovo/scg/camera/SoundClips$Player;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/SoundClips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaActionSoundPlayer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaActionSoundPlayer"


# instance fields
.field private mSound:Landroid/media/MediaActionSound;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized play(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 88
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 99
    :try_start_0
    const-string v0, "MediaActionSoundPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/SoundClips$MediaActionSoundPlayer;->mSound:Landroid/media/MediaActionSound;

    .line 77
    :cond_0
    return-void
.end method
