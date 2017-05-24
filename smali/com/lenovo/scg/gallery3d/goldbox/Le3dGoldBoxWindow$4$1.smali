.class Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4$1;
.super Ljava/lang/Object;
.source "Le3dGoldBoxWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;->onClick(Lcom/lenovo/scg/common/le3d/Le3dView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4$1;->this$1:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4$1;->this$1:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4$1;->this$1:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$4;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->mGirdDataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$GridData;->id:I

    # invokes: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->requestStartFunctionFromId(I)V
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$200(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;I)V

    .line 310
    return-void
.end method
