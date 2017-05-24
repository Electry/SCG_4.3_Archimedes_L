.class Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity$1;
.super Ljava/lang/Object;
.source "GifPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 111
    :pswitch_0
    const-string v0, "GifView"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    :pswitch_1
    return-void

    .line 101
    :pswitch_2
    const-string v0, "GifView"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->lossAudioFocus()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->access$000(Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;)V

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v0, "GifView"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
