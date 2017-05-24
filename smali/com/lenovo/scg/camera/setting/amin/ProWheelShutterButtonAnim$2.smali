.class Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProWheelShutterButtonAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->shutterButtonHideBigWheel(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

.field final synthetic val$mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic val$shutterButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;->this$0:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;->val$shutterButton:Landroid/view/View;

    iput-object p3, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;->val$mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;->this$0:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;->val$shutterButton:Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;->val$mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->shutterButtonHideBigWheelStep2(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 103
    return-void
.end method
