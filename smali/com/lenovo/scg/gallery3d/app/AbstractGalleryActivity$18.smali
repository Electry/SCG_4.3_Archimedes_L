.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2350
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2351
    .local v0, "id":I
    const v1, 0x7f100628

    if-ne v1, v0, :cond_1

    .line 2352
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/app/SettingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 2356
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    const v1, 0x7f10062b

    if-ne v1, v0, :cond_0

    .line 2354
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$18;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
