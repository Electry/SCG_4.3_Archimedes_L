.class Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$8;
.super Ljava/lang/Object;
.source "LocalTimeAlbumSetPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->showDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage$8;->this$0:Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->hideDetails()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;->access$2800(Lcom/lenovo/scg/gallery3d/app/LocalTimeAlbumSet/LocalTimeAlbumSetPage;)V

    .line 993
    return-void
.end method
