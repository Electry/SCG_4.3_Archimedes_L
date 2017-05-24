.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageObject"
.end annotation


# instance fields
.field drawable:Landroid/graphics/Bitmap;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "d"    # Landroid/graphics/Bitmap;
    .param p3, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;->drawable:Landroid/graphics/Bitmap;

    .line 56
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ImageObject;->imageView:Landroid/widget/ImageView;

    .line 57
    return-void
.end method
