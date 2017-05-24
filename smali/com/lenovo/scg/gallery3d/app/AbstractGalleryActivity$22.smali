.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;
.super Ljava/lang/Thread;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->loadAvatarPhoto(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field final synthetic val$avatarHnadler:Landroid/os/Handler;

.field final synthetic val$avatarUrl:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarHnadler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "AbstractGalleryActivity_load_avatar_thread"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3129
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3130
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 3131
    const-string v3, "AbstractGalleryActivity"

    const-string v4, "loadAvatarPhoto, from local, is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarHnadler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 3133
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3134
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarHnadler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3151
    :goto_0
    return-void

    .line 3137
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    const-string v3, "AbstractGalleryActivity"

    const-string v4, "loadAvatarPhoto, from local is null, get from net"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3139
    .local v0, "avatarbytes":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 3140
    const/4 v3, 0x0

    array-length v4, v0

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3143
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFileAsync([BLjava/lang/String;Ljava/lang/String;)Z

    .line 3145
    const-string v3, "AbstractGalleryActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAvatarPhoto, from net, avatarphoto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarHnadler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 3147
    .restart local v2    # "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3148
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$22;->val$avatarHnadler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
