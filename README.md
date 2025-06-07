# ✅ SmartHire360 – Salesforce Recruitment & Onboarding App

## 🎯 Purpose
Build a full-fledged Salesforce app for HR teams to manage recruitment, track candidates, automate onboarding, and optionally integrate with external systems.

This project touches nearly every essential Salesforce developer skill — a dream app to flex that apex muscle 💪

---

## 🛠️ Tech Stack & Concepts Covered

| Area       | Covered Concepts |
|------------|------------------|
| **Apex**   | Triggers, Batch, Queueable, Schedulable, Handler Patterns |
| **LWC**    | Data Tables, Modals, Custom Forms, Event Handling, Wire & Imperative |
| **Aura**   | Legacy Component for Candidate Review Summary |
| **Visualforce** | Candidate Offer Letter PDF |
| **Admin**  | Profiles, Permission Sets, Validation Rules, Page Layouts |
| **Data**   | Import/Export, Data Modeling, Schema Design |
| **Automation** | Record-Triggered Flow, Screen Flow, Scheduled Flow, Workflow, Approval Process |
| **Config** | Apps, Tabs, Page Layouts, Record Types |
| **Integration (Optional)** | Mock REST callout to Background Check API |
| **Reporting** | Dashboards: Recruiter KPIs, Candidate Pipeline |

---

## 🧾 Functional Spec

### 1. App Name
`SmartHire360`

---

### 2. Custom Objects

| Object           | Purpose                                 |
|------------------|-----------------------------------------|
| `Position__c`     | Job positions to hire for               |
| `Candidate__c`    | People applying                         |
| `Application__c`  | Junction between Position and Candidate |
| `Interview__c`    | Interview rounds                        |
| `Offer__c`        | Final offer & onboarding details        |

---

### 3. Functional Modules

#### 🎯 A. Job Management
- Admin can create Job Positions.
- Recruiters can assign hiring managers.
- Apex Trigger to auto-create record in external system (mock).
- `Status__c` picklist: Open, In Review, Filled, Cancelled.

---

#### 🙋 B. Candidate Portal (LWC)
- Custom LWC form to submit applications.
- Resume upload via File Upload.
- Screen Flow guides the candidate through submission.
- Apex validation prevents duplicate emails.

---

#### 🤝 C. Interview Scheduling (Aura)
- Aura Component to display a calendar view of interviews.
- Recruiters can assign interviewers and set time slots.
- Apex trigger sends Chatter post or creates Task for interviewer.

---

#### 🧠 D. Offer Letter Generation (Visualforce)
- Recruiter clicks “Generate Offer Letter” after final selection.
- Visualforce page renders PDF using `Offer__c` record data.

---

#### ⚙️ E. Admin Features
- Record Types on `Candidate__c`: Fresher, Lateral, Executive.
- Profiles: Recruiter, HR Manager, Interviewer.
- Permission Sets for `Offer__c`.
- Validation Rule: Interview can't be scheduled if Candidate is “Rejected”.

---

#### 🔁 F. Automation Flows
- **Record-Triggered Flow**: Auto-create `Interview__c` on `Application__c` creation.
- **Screen Flow**: Final onboarding checklist for recruiter.
- **Scheduled Flow**: Weekly reminder to update interview statuses.

---

#### 📈 G. Reports & Dashboards
- **Pie Chart**: Candidate Statuses (In Review, Rejected, Selected)
- **Bar Chart**: Recruiter Performance (No. of hires)
- **Table Report**: Positions filled in last 30 days

---

#### 🔌 Optional Integrations
- REST Callout to dummy background check API on `Offer__c` creation.
- Email Notification when an `Interview__c` is updated.

---

## 📂 Deliverables Structure

