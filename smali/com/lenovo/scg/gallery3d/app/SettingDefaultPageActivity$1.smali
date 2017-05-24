.class Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity$1;
.super Ljava/lang/Object;
.source "SettingDefaultPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/SettingDefaultPageActivity;->finish()V

    .line 56
    return-void
.end method
