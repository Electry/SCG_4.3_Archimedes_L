.class Lcom/lenovo/scg/gallery3d/app/AlbumPage$10;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumPage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumPage$10;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumPage;->hideDetails()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumPage;->access$2700(Lcom/lenovo/scg/gallery3d/app/AlbumPage;)V

    .line 1042
    return-void
.end method
