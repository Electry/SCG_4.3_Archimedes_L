.class public final enum Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;
.super Ljava/lang/Enum;
.source "LeCPUtype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/LeCSCJNI/LeCPUtype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CPUtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

.field public static final enum CPU_bigEndian:Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

.field public static final enum CPU_littleEndian:Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;


# instance fields
.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    const-string v1, "CPU_bigEndian"

    invoke-direct {v0, v1, v2, v2}, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->CPU_bigEndian:Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    const-string v1, "CPU_littleEndian"

    invoke-direct {v0, v1, v3, v3}, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->CPU_littleEndian:Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    sget-object v1, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->CPU_bigEndian:Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->CPU_littleEndian:Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->$VALUES:[Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-boolean p3, p0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->mValue:Z

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->$VALUES:[Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    invoke-virtual {v0}, [Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;

    return-object v0
.end method


# virtual methods
.method public GetValue()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/lenovo/scg/LeCSCJNI/LeCPUtype$CPUtype;->mValue:Z

    return v0
.end method
