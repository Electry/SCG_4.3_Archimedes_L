.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$21;
.super Landroid/os/Handler;
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

.field final synthetic val$avatar:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 3116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$21;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$21;->val$avatar:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$21;->val$avatar:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3121
    return-void
.end method
