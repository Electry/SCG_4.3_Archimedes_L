.class public final enum Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;
.super Ljava/lang/Enum;
.source "LeSCFBaseModeStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZSDMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

.field public static final enum ZSD_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

.field public static final enum ZSD_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    const-string v1, "ZSD_OPEN"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    .line 87
    new-instance v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    const-string v1, "ZSD_CLOSE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->$VALUES:[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->$VALUES:[Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    return-object v0
.end method
