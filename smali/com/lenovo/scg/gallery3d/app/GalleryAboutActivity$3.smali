.class Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$3;
.super Ljava/lang/Object;
.source "GalleryAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    const-class v2, Lcom/lenovo/scg/gallery3d/app/AboutLisenseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$3;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method
