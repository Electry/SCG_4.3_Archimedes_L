.class Lcom/lenovo/scg/photos/AlbumActivity$4;
.super Ljava/lang/Object;
.source "AlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$4;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$4;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # invokes: Lcom/lenovo/scg/photos/AlbumActivity;->back()V
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$500(Lcom/lenovo/scg/photos/AlbumActivity;)V

    .line 316
    return-void
.end method
