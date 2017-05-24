.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$7;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showFolderFilterSpecView()V
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
    .line 1538
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$7;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideFolderFilterSpecView()Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$100(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)Z

    .line 1542
    return-void
.end method
