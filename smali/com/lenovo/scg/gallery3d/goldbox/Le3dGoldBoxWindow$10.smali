.class Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$10;
.super Ljava/lang/Object;
.source "Le3dGoldBoxWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startEntryAnimationStep2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$10;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow$10;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;

    # invokes: Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->startEntryAnimationStep3()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;->access$700(Lcom/lenovo/scg/gallery3d/goldbox/Le3dGoldBoxWindow;)V

    .line 658
    return-void
.end method
