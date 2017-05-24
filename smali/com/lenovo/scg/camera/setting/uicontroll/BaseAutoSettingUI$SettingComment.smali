.class public Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;
.super Ljava/lang/Object;
.source "BaseAutoSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingComment"
.end annotation


# static fields
.field public static final UNKNOW:I = -0x1


# instance fields
.field public commonID:I

.field public iconID:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->iconID:I

    .line 50
    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI$SettingComment;->commonID:I

    return-void
.end method
