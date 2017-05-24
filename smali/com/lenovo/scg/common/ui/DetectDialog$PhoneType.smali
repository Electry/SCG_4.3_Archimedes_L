.class public final enum Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;
.super Ljava/lang/Enum;
.source "DetectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/ui/DetectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

.field public static final enum ARM:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

.field public static final enum UNLENOVO:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

.field public static final enum WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

.field public static final enum X86:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-instance v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    const-string v1, "ARM"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->ARM:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    new-instance v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    const-string v1, "X86"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->X86:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    new-instance v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    const-string v1, "UNLENOVO"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->UNLENOVO:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    new-instance v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    const-string v1, "WRONGVER"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    sget-object v1, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->ARM:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->X86:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->UNLENOVO:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->$VALUES:[Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->$VALUES:[Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    return-object v0
.end method
