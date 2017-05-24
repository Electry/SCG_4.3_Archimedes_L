.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;
.super Ljava/lang/Thread;
.source "FacePrettyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 980
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 981
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "FacePrettyActivity EffectThread "

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePretty()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$3200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    .line 984
    return-void
.end method
