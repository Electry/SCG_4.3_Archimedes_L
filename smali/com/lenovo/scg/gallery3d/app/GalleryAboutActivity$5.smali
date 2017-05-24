.class Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$5;
.super Ljava/lang/Object;
.source "GalleryAboutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->showExplainDialog()V
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
    .line 389
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$400(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->dismissDialog()Z

    .line 394
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$5;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->updateVersionWidthSUS()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$500(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V

    .line 396
    return-void
.end method
