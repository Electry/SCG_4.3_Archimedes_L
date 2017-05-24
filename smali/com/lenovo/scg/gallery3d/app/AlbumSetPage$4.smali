.class Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$4;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
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
    .line 529
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AlbumSetPage;->onBackPressed()V

    .line 534
    return-void
.end method
