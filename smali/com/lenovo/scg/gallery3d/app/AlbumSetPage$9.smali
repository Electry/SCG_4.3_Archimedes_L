.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$9;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$9;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->hideDetails()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->access$1800(Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;)V

    .line 1029
    return-void
.end method
