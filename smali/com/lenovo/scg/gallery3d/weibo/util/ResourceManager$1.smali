.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;
.super Ljava/lang/Thread;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->loadImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

.field final synthetic val$childname:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$v:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$childname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 117
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$000(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;

    .line 119
    .local v2, "drawable":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    new-instance v5, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$v:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v3, v7}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->sendMassage(ILjava/lang/Object;)V
    invoke-static {v4, v8, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$100(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;ILjava/lang/Object;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 129
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$childname:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$v:Landroid/widget/ImageView;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-static {v3, v0, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$200(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$url:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/net/UrlDataReader;->getNetBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 136
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 137
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$childname:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->writePictureToFile([BLjava/lang/String;Ljava/lang/String;)Z

    .line 138
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4, v8}, Lcom/lenovo/scg/common/utils/bitmap/BitmapDecodeUtils;->decodeByteArray([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$childname:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$1;->val$v:Landroid/widget/ImageView;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->finishLoadImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    invoke-static {v3, v0, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$200(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
