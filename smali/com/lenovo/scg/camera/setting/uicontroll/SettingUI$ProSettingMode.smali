.class final enum Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;
.super Ljava/lang/Enum;
.source "SettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProSettingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

.field public static final enum Expand:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

.field public static final enum Wheel:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    const-string v1, "Wheel"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->Wheel:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    const-string v1, "Expand"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->Expand:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    .line 520
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->Wheel:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->Expand:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->$VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 520
    const-class v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;
    .locals 1

    .prologue
    .line 520
    sget-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->$VALUES:[Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    return-object v0
.end method
