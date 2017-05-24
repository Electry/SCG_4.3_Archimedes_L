.class Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;
.super Ljava/lang/Thread;
.source "FacePrettyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoCreateAllEffectFaceThreat"
.end annotation


# instance fields
.field public param:[I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1170
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "FacePrettyActivity AutoCreateAllEffectFaceThreat"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setCanClick(Z)V

    .line 1173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->param:[I

    # invokes: Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V
    invoke-static {v0, v2, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V

    .line 1174
    return-void
.end method
