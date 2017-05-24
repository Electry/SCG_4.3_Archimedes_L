.class public Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;
.super Landroid/app/Activity;
.source "GifPlayerActivity.java"


# static fields
.field public static final M_FROM_CAMERA:Ljava/lang/String; = "From_Camera"

.field private static final TAG:Ljava/lang/String; = "GifView"


# instance fields
.field private mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

.field private mUri:Landroid/net/Uri;

.field private mbFromCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    .line 31
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mbFromCamera:Z

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->lossAudioFocus()V

    return-void
.end method

.method private lossAudioFocus()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const v6, 0x7f0f0860

    const/4 v5, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 46
    const-string v2, "GifView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "From_Camera"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mbFromCamera:Z

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 53
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 54
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->finish()V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->requestWindowFeature(I)Z

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 62
    const v2, 0x7f0400e3

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->setContentView(I)V

    .line 63
    const v2, 0x7f1005a7

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/GifView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    .line 65
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mbFromCamera:Z

    if-eqz v2, :cond_4

    .line 67
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 74
    .local v1, "result":I
    if-ne v1, v5, :cond_1

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GifView;->setUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->finish()V

    goto :goto_0

    .line 85
    .end local v1    # "result":I
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mGifview:Lcom/lenovo/scg/gallery3d/ui/GifView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GifView;->setUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 141
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;->lossAudioFocus()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 134
    return-void
.end method
