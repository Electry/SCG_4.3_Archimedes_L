.class Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$4;
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
    .line 381
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->access$400(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->dismissDialog()Z

    .line 386
    return-void
.end method
